import 'package:flutter/material.dart';
import 'package:sdu/core/constants/app_colors.dart';

class RoundedTitle extends StatelessWidget {
  const RoundedTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102,
      height: 102,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.systemWhite,
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          'ED',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.w800,
            height: 1.0,
            color: AppColors.primaryColor,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
