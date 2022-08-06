import 'package:flutter/material.dart';
import 'package:intern_app/presentation/core/theme/colors.dart';


class PurpleContainer extends StatelessWidget {
  const PurpleContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(260),
          bottomRight: Radius.circular(360),
        ),
        child: Container(
          height: 600,
          width: 335,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                HColors.primaryColor,
               HColors.primaryColor.withOpacity(0.2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
