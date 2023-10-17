import 'package:auto_route/auto_route.dart';
import 'package:fan_flutter/application/auth/auth_bloc.dart';
import 'package:fan_flutter/presentation/components/app_buttons.dart';
import 'package:fan_flutter/presentation/components/app_textfields.dart';
import 'package:fan_flutter/utilities/i10n/l10n.dart';
import 'package:fan_flutter/utilities/injection/injection.dart';
import 'package:fan_flutter/utilities/loader.dart';
import 'package:fan_flutter/utilities/validator/input_validator_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBottomSheetWidget {
  static Future showForgotPasswordBottomSheet(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final key = GlobalKey<FormState>();

    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      context: context,
      isScrollControlled: true,
      builder: (context) => BlocProvider<AuthBloc>(
        create: (_) => getIt<AuthBloc>(),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) => state.maybeMap(
            orElse: () {
              return null;
            },
            resetPasswordSuccess: (_) {
              context.router.pop(true);
              return null;
            },
            loading: (_) => LoaderUtils.showProcessLoading(),
            showMessage: (e) => LoaderUtils.showMessage(e.reason),
          ),
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: MediaQuery.viewInsetsOf(context).bottom),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Form(
                  key: key,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppTextField.defaults(
                        controller: emailController,
                        validator: (value) => InputValidatorUtils.email(value),
                        label: I10n.current.email,
                      ),
                      const SizedBox(height: 10),
                      AppButton.defaults(
                        title: I10n.current.send,
                        onPressed: () {
                          if (key.currentState!.validate()) {
                            context.read<AuthBloc>().add(
                                  AuthEvent.onResetPassword(
                                    email: emailController.text,
                                  ),
                                );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
