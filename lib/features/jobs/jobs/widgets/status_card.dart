import 'package:flutter/material.dart';
import 'package:sdu/core/constants/app_colors.dart';
import 'package:sdu/features/theme/theme_extensions.dart';

class StatusCard extends StatelessWidget {
  final String? text;
  final Color? bg;
  final IconData? icon;

  const StatusCard({
    this.text,
    this.bg,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: bg,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14, color: AppColors.systemWhite),
            const SizedBox(width: 4),
          ],
          Text(
            text ?? '',
            style: context.labelMediumSemiBold
                ?.copyWith(color: AppColors.systemWhite),
          ),
        ],
      ),
    );
  }
}
