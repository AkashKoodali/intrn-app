import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_app/application/auth/auth_bloc/auth_bloc.dart';
import 'package:intern_app/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:intern_app/application/user/user_bloc.dart';
import 'package:intern_app/presentation/core/theme/colors.dart';
import 'package:intern_app/presentation/core/widgets/custom_button.dart';
import 'package:intern_app/presentation/onboarding/widgets/form_field.dart';
import 'package:intern_app/presentation/route/router.gr.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (aContext, aState) {
        aState.map(
            initial: (_) {},
            authenticated: (_) {
              debugPrint("authenticated!!!!!");
              AutoRouter.of(context).replaceAll([const RootRoute()]);
            },
            unauthenticated: (_) {
              debugPrint("unauthenticated!!!!!");
            },
            loadingAuthenticationStatus:
                (LoadingAuthenticationStatus value) {});
      },
      child: BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            state.userFailureOrSuccess.map((either) => either.fold(
                (l) => {},
                (r) => context
                    .read<AuthBloc>()
                    .add(const AuthEvent.requestAuthStatus())));
          },
          child: BlocConsumer<SignUpFormBloc, SignUpFormState>(
              listener: (context, state) {
            context.read<SignUpFormBloc>().state.authFailureOrSuccess.map(
                  (a) => a.fold(
                    (l) => null,
                    (r) {
                      context.read<UserBloc>().add(UserEvent.createOrUpdateUser(
                            emailAddress: state.emailAddress,
                            password: state.password,
                          ));
                    },
                  ),
                );
          }, builder: (context, state) {
            final screenWidth = MediaQuery.of(context).size.width;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  child: Container(
                    height: 150,
                    width: 300,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: Form(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            HFormField(
                              hintText: "Email",
                              onChanged: (value) {
                                context
                                    .read<SignUpFormBloc>()
                                    .add(SignUpFormEvent.emailChanged(value));
                              },
                              validator: (_) => context
                                  .read<SignUpFormBloc>()
                                  .state
                                  .emailAddress
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                        invalidEmail: (_) => 'Invalid Email',
                                        orElse: () => null),
                                    (_) => null,
                                  ),
                            ),
                            const Divider(
                              height: 0.2,
                              thickness: 1.0,
                            ),
                            HFormField(
                              hintText: "Password",
                              obscureText: true,
                              onChanged: (value) => context
                                  .read<SignUpFormBloc>()
                                  .add(SignUpFormEvent.passwordChanged(value)),
                              validator: (_) => context
                                  .read<SignUpFormBloc>()
                                  .state
                                  .password
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                        shortPassword: (_) => 'Short Password',
                                        orElse: () => null),
                                    (_) => null,
                                  ),
                            ),
                            const Divider(
                              height: 0.2,
                              thickness: 1.0,
                            ),
                            HFormField(
                              hintText: "Confirm Password",
                              obscureText: true,
                              onChanged: (value) => context
                                  .read<SignUpFormBloc>()
                                  .add(SignUpFormEvent.confirmPasswordChanged(
                                      value)),
                              validator: (_) => context
                                  .read<SignUpFormBloc>()
                                  .state
                                  .confirmPassword
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                        passwordMisMatch: (_) =>
                                            'Password does not match',
                                        orElse: () => null),
                                    (_) => null,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  width: 155,
                  hight: 35,
                  text: 'Sign Up',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                  onTap: () {
                    context
                        .read<SignUpFormBloc>()
                        .add(const SignUpFormEvent.registerUserPressed());
                  },
                  color: HColors.iconColor,
                ),
                const SizedBox(height: 70),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth - 240),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: HColors.iconColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Container(
                        height: 3,
                        width: screenWidth-263,
                        color: HColors.primaryColor,
                      )
                    ],
                  ),
                ),
              ],
            );
          })),
    );
  }
}
