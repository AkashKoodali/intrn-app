import 'package:flutter/material.dart';
import 'package:intern_app/presentation/core/theme/colors.dart';
import 'package:intern_app/presentation/onboarding/widgets/log_out_dialog.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            child: Icon(
              Icons.logout_rounded,
              color: HColors.whiteColor,
              size: 20,
            ),
            onTap: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => const LogOutDialog());
            }),
      ),
    );
  }
}
