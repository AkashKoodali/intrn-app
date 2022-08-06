

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_app/application/auth/auth_bloc/auth_bloc.dart';
import 'package:intern_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:intern_app/application/user/user_bloc.dart';
import 'package:intern_app/presentation/core/theme/colors.dart';
import 'package:intern_app/presentation/core/widgets/custom_button.dart';
import 'package:intern_app/presentation/onboarding/widgets/form_field.dart';
import 'package:intern_app/presentation/onboarding/widgets/signin_auth_dialog.dart';
import 'package:intern_app/presentation/route/router.gr.dart';
// import 'package:grocery_app/application/auth/auth_bloc/auth_bloc.dart';
// import 'package:grocery_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
// import 'package:grocery_app/application/user/user_bloc.dart';
// import 'package:grocery_app/presentation/core/theme/colors.dart';
// import 'package:grocery_app/presentation/core/widgets/custom_button.dart';
// import 'package:grocery_app/presentation/onboarding/widgets/form_field.dart';
// import 'package:grocery_app/presentation/onboarding/widgets/signin_auth_dialog.dart';
// import 'package:grocery_app/presentation/route/router.gr.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (aContext, aState) {
        aState.maybeMap(
            authenticated: (a) {
              AutoRouter.of(context).replaceAll([const RootRoute()]);
            },
            orElse: () {});
      },
      child: BlocListener<UserBloc, UserState>(
        listener: (uContext, uState) {
          if (uState.user == null) {
            debugPrint("Creating new user...");
            context.read<UserBloc>().add(const UserEvent.createOrUpdateUser(

              

                ));
          } else {
            debugPrint("Requesting authentication status...");
            context.read<AuthBloc>().add(const AuthEvent.requestAuthStatus());
          }
        },
        child: BlocConsumer<SignInFormBloc, SignInFormState>(
          listener: (context, state) {
            state.authFailureOrSuccess.fold(
              () => null,
              (either) => either.fold(
                (failure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("sign in unsuccessful!")));
                },
                (r) {
                  debugPrint("Requesting user document...");
                  context
                      .read<UserBloc>()
                      .add(const UserEvent.getCurrentUser());
                },
              ),
            );
          },
          builder: (context, state) {
            final screenWidth = MediaQuery.of(context).size.width;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 100,
                    width: 300,
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: HColors.whiteColor.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: Form(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: SingleChildScrollView(
                        reverse: true,
                        child: Column(
                          children: [
                            HFormField(
                              hintText: "Email",
                              onChanged: (value) => context
                                  .read<SignInFormBloc>()
                                  .add(SignInFormEvent.emailChanged(value)),
                              validator: (_) => context
                                  .read<SignInFormBloc>()
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
                                  .read<SignInFormBloc>()
                                  .add(SignInFormEvent.passwordChanged(value)),
                              validator: (_) => context
                                  .read<SignInFormBloc>()
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
                          ],
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  width: 155,
                  hight: 35,
                  text: 'Sign In',
                  style: TextStyle(
                    color: HColors.whiteColor,
                    fontWeight: FontWeight.w600
                    ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const SignInAuthDialog());
                    context.read<SignInFormBloc>().add(const SignInFormEvent
                        .signInWithEmailAndPasswordPressed());
                  },
                  color: HColors.iconColor,
                ),
                const SizedBox(height: 80),
                Padding(
                  padding:  EdgeInsets.only(left: screenWidth-220),
                  child: Column(
                    
                    children: [
                      GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).replace(const SignUp());
                        },
                        child:Text(
                          'Create Account',
                          style: TextStyle(
                              color: HColors.iconColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Container(
                        height: 3,
                        width: screenWidth-220,
                        color: HColors.primaryColor,
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
    
  }
}