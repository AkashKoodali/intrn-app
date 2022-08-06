import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:intern_app/presentation/core/theme/colors.dart';
import 'package:intern_app/presentation/core/widgets/icon_button.dart';
import 'package:intern_app/presentation/onboarding/sign_in/widget/container_one.dart';
import 'package:intern_app/presentation/onboarding/sign_in/widget/container_two.dart';
import 'package:intern_app/presentation/onboarding/sign_in/widget/singn_form.dart';
import 'package:intern_app/presentation/onboarding/widgets/img_scaffold.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  void initState() {
    super.initState();
    context.read<SignInFormBloc>().add(const SignInFormEvent.refreshState());
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHigh = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
         
          child: Stack(
            children: [
              ScaffoldImage(screenHigh: screenHigh, screenWidth: screenWidth),
              GreyContainer(screenHigh: screenHigh, screenWidth: screenWidth),
              const PurpleContainer(),
              Container(
                height: screenHigh,
                width: screenWidth,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: HColors.whiteColor,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                   Text(
                      'Sign in with your username or email ',
                      style: TextStyle(
                        color: HColors.whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: SignInForm()),
                    const SizedBox(
                      height: 80,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'Social login can save your valuable time',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 3,
                          width: screenWidth / 2 - 60,
                          color: HColors.primaryColor,
                        ),
                        Image.asset(
                          'assets/t.png',
                          width: 35,
                        ),
                        Container(
                            height: 3,
                            width: screenWidth / 2 - 60,
                            color: HColors.primaryColor)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IButton(
                          icon: "assets/images/google_logo.png",
                          label: 'Google',
                          primary: HColors.whiteColor,
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .signInWithGooglePressed());
                          },
                        ),
                        IButton(
                          icon: "assets/images/facebook_logo.png",
                          label: 'Facebook',
                          primary: const Color.fromARGB(255, 6, 78, 137),
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .signInWithGooglePressed());
                          },
                          textColor: HColors.whiteColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

