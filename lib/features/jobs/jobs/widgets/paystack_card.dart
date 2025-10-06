import 'package:flutter/material.dart';
import 'package:sdu/features/theme/theme_extensions.dart';

class MintCard extends StatelessWidget {
  final String text;
  const MintCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFE6F2EC),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: context.labelMediumRegular,
      ),
    );
  }
}
