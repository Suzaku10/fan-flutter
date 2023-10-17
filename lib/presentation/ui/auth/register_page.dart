import 'package:auto_route/auto_route.dart';
import 'package:fan_flutter/application/auth/auth_bloc.dart';
import 'package:fan_flutter/domain/constant/app_assets.dart';
import 'package:fan_flutter/domain/constant/app_pages.dart';
import 'package:fan_flutter/domain/constant/app_styles.dart';
import 'package:fan_flutter/domain/params/auth/login_params.dart';
import 'package:fan_flutter/presentation/components/app_buttons.dart';
import 'package:fan_flutter/presentation/components/app_textfields.dart';
import 'package:fan_flutter/presentation/ui/auth/component/copyright_widgets.dart';
import 'package:fan_flutter/presentation/ui/auth/component/greeting_widgets.dart';
import 'package:fan_flutter/utilities/i10n/l10n.dart';
import 'package:fan_flutter/utilities/injection/injection.dart';
import 'package:fan_flutter/utilities/loader.dart';
import 'package:fan_flutter/utilities/router/app_router.dart';
import 'package:fan_flutter/utilities/validator/input_validator_utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _showPassword = false;
  bool _showConfirmationPassword = false;
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
                registerSuccess: (v) {
                  LoaderUtils.dismissLoading();
                  context.router.replaceAll([const HomeRoute()]);
                },
                showMessage: (v) => LoaderUtils.showMessage(v.reason),
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
                            controller: _nameController,
                            label: I10n.current.name,
                            hint: I10n.current.hint_name,
                            validator: (value) => InputValidatorUtils.name(value),
                          ),
                          const SizedBox(height: 24),
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
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: InkWell(
                                onTap: () => setState(() => _showPassword = !_showPassword),
                                child: SvgPicture.asset(AppAssets.icPassword, width: 24, height: 24),
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          AppTextField.defaults(
                            controller: _confirmPasswordController,
                            label: I10n.current.confirm_password,
                            hint: I10n.current.hint_confirmation_password,
                            validator: (value) => InputValidatorUtils.confirmPassword(value, password: _passwordController.text),
                            obscure: !_showConfirmationPassword,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: InkWell(
                                onTap: () => setState(() => _showConfirmationPassword = !_showConfirmationPassword),
                                child: SvgPicture.asset(AppAssets.icPassword, width: 24, height: 24),
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          AppButton.defaults(
                              title: I10n.current.register,
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.onRegister(
                                          params: LoginParams(email: _emailController.text, password: _passwordController.text),
                                          name: _nameController.text,
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
                                    text: I10n.current.have_account,
                                    children: [
                                      const TextSpan(text: "      "),
                                      TextSpan(
                                        text: I10n.current.login_now,
                                        style: AppStyles.textSm.primary.semiBold,
                                        recognizer: TapGestureRecognizer()..onTap = () => context.router.navigateNamed(AppPages.login),
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
