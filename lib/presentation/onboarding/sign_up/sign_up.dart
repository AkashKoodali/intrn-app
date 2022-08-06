
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intern_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:intern_app/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:intern_app/presentation/core/theme/colors.dart';
import 'package:intern_app/presentation/core/widgets/icon_button.dart';
import 'package:intern_app/presentation/onboarding/sign_in/widget/container_one.dart';
import 'package:intern_app/presentation/onboarding/sign_in/widget/container_two.dart';
import 'package:intern_app/presentation/onboarding/sign_up/widget/sign_up_form.dart';
import 'package:intern_app/presentation/onboarding/widgets/img_scaffold.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    super.initState();
    context.read<SignUpFormBloc>().add(const SignUpFormEvent.refreshState());
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
                      'Sign Up',
                      style: TextStyle(
                        color: HColors.whiteColor,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sign Up with your username or password ',
                      style: TextStyle(
                        color: HColors.whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: SignUpForm()
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'Social login can save your valuable time',
                        style: TextStyle(
                            color: HColors.iconColor,
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
                          color:  HColors.primaryColor,
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IButton(
                          icon: "assets/images/google_logo.png",
                          label: 'Google',
                          primary:  HColors.whiteColor,
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


