import 'package:auto_route/auto_route.dart';
import 'package:fan_flutter/application/auth/auth_bloc.dart';
import 'package:fan_flutter/domain/constant/app_assets.dart';
import 'package:fan_flutter/domain/constant/app_pages.dart';
import 'package:fan_flutter/domain/constant/app_styles.dart';
import 'package:fan_flutter/domain/params/auth/login_params.dart';
import 'package:fan_flutter/presentation/components/app_buttons.dart';
import 'package:fan_flutter/presentation/components/app_textfields.dart';
import 'package:fan_flutter/presentation/components/bottom_sheet.dart';
import 'package:fan_flutter/presentation/ui/auth/component/copyright_widgets.dart';
import 'package:fan_flutter/presentation/ui/auth/component/greeting_widgets.dart';
import 'package:fan_flutter/utilities/i10n/l10n.dart';
import 'package:fan_flutter/utilities/injection/injection.dart';
import 'package:fan_flutter/utilities/loader.dart';
import 'package:fan_flutter/utilities/router/app_router.dart';
import 'package:fan_flutter/utilities/validator/input_validator_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _showPassword = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>(),
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () => '',
                loading: (_) => LoaderUtils.showProcessLoading(),
                loginSuccess: (_) {
                  LoaderUtils.dismissLoading();
                  context.router.replaceAll([const HomeRoute()]);
                },
                showMessage: (e) => LoaderUtils.showMessage(e.reason),
              );
            },
            builder: (context, _) => SingleChildScrollView(
              child: Column(
                children: [
                  const GreetingsWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          AppTextField.defaults(
                            controller: _emailController,
                            label: I10n.current.email,
                            hint: I10n.current.hint_email,
                            validator: (value) => InputValidatorUtils.email(value),
                          ),
                          const SizedBox(height: 24),
                          AppTextField.defaults(
                            controller: _passwordController,
                            label: I10n.current.password,
                            hint: I10n.current.hint_password,
                            validator: (value) => InputValidatorUtils.password(value),
                            obscure: !_showPassword,
                            secondaryLabel: InkWell(
                              onTap: () => AppBottomSheetWidget.showForgotPasswordBottomSheet(context),
                              child: Text(I10n.current.forgot_password_info, style: AppStyles.textSm.primary.semiBold),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: InkWell(
                                onTap: () => setState(() => _showPassword = !_showPassword),
                                child: SvgPicture.asset(AppAssets.icPassword, width: 24, height: 24),
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          AppButton.defaults(
                              title: I10n.current.login,
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.onLogin(
                                          LoginParams(email: _emailController.text, password: _passwordController.text),
                                        ),
                                      );
                                }
                              },
                              assets: AppAssets.icArrowRight),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text.rich(
                                TextSpan(
                                    text: I10n.current.no_account,
                                    children: [
                                      const TextSpan(text: "      "),
                                      TextSpan(
                                        text: I10n.current.register_now,
                                        style: AppStyles.textSm.primary.semiBold,
                                        recognizer: TapGestureRecognizer()..onTap = () => context.router.pushNamed(AppPages.register),
                                      )
                                    ],
                                    style: AppStyles.textSm.neutral),
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.center,
                            child: CopyrightWidget(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
