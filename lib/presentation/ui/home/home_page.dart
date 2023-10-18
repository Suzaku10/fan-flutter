import 'package:auto_route/auto_route.dart';
import 'package:fan_flutter/application/auth/auth_bloc.dart';
import 'package:fan_flutter/application/users/users_bloc.dart';
import 'package:fan_flutter/domain/constant/app_enum.dart';
import 'package:fan_flutter/domain/constant/app_styles.dart';
import 'package:fan_flutter/presentation/components/app_dialog.dart';
import 'package:fan_flutter/presentation/components/bottom_sheet.dart';
import 'package:fan_flutter/presentation/ui/home/component/account_item.dart';
import 'package:fan_flutter/utilities/i10n/l10n.dart';
import 'package:fan_flutter/utilities/injection/injection.dart';
import 'package:fan_flutter/utilities/loader.dart';
import 'package:fan_flutter/utilities/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(create: (_) => getIt<UsersBloc>()..add(const UsersEvent.onFetch(status: FilterStatus.all, data: []))),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(I10n.current.list_of_users),
          actions: [
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) => state.maybeMap(
                  orElse: () {
                    return null;
                  },
                  loading: (e) => LoaderUtils.showProcessLoading(),
                  logoutSuccess: (e) {
                    LoaderUtils.dismissLoading();
                    context.router.replaceAll([const LoginRoute()]);
                  }),
              builder: (context, state) => IconButton(
                onPressed: () async {
                  final canLogout = await AppDialogWidget.showConfirmation(context, text: I10n.current.logout_warning);
                  if (canLogout) context.read<AuthBloc>().add(const AuthEvent.onLogout());
                },
                icon: const Icon(Icons.logout),
              ),
            ),
          ],
        ),
        body: BlocConsumer<UsersBloc, UsersState>(
          listener: (context, state) => state.maybeMap(
            orElse: () {
              return null;
            },
            loading: (e) => LoaderUtils.showProcessLoading(),
            fetchSuccess: (_) => LoaderUtils.dismissLoading(),
            showMessage: (e) => LoaderUtils.showMessage(e),
          ),
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => Container(),
                fetchSuccess: (e) {
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                            onPressed: () async {
                              final result = await AppBottomSheetWidget.showAccountFilterBottomSheet(context, lastFilter: e.lastFilter);
                              if (result != null) context.read<UsersBloc>().add(UsersEvent.onFetch(status: result, data: e.data));
                            },
                            icon: const Icon(Icons.filter_list_sharp)),
                      ),
                      if (e.data.isEmpty)
                        Expanded(
                          child: Center(
                            child: Text.rich(
                                TextSpan(
                                    text: "😅\n",
                                    style: const TextStyle(fontSize: 64),
                                    children: [TextSpan(text: I10n.current.empty_data, style: AppStyles.displayLg)]),
                                textAlign: TextAlign.center),
                          ),
                        ),
                      if (e.data.isNotEmpty)
                        Expanded(
                          child: ListView.separated(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            itemCount: e.data.length,
                            itemBuilder: (BuildContext context, int index) => AccountItem(data: e.data[index]),
                            separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 8),
                          ),
                        ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
