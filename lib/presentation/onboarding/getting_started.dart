import 'package:auto_route/auto_route.dart';
import "package:flutter/material.dart";
import 'package:intern_app/presentation/core/widgets/custom_button.dart';
import 'package:intern_app/presentation/route/router.gr.dart';

class GettingStarted extends StatelessWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: CustomButton(
          hight: 30,
          width: 60,
          color: Colors.white,
            text: "Get Started",
            style: const TextStyle(
              color: Colors.deepPurple
            ),
            bordercolor: Colors.deepPurple,
            onTap: () {
              AutoRouter.of(context).push(const SignIn());
            }),
      ),
    );
  }
}
