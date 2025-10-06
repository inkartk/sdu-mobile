import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdu/core/constants/app_colors.dart';
import 'package:sdu/core/router.gr.dart';
import 'package:sdu/features/theme/theme_extensions.dart';

import '../../../../core/assets/assets.gen.dart';

class JobCard extends StatelessWidget {
  final String titleText;
  final String companyText;
  final Widget leftChip;
  final String rightText;
  final Widget? statusChip;

  const JobCard({
    super.key,
    required this.titleText,
    required this.companyText,
    required this.leftChip,
    required this.rightText,
    this.statusChip,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(ProfessionRoute());
      },
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.systemWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Assets.png.jobLogo.image(width: 35, height: 35),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleText,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: context.bodyMediumSemiBold,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          companyText,
                          style: context.labelMediumSemiBold,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    leftChip,
                    const Spacer(),
                    Text(
                      rightText,
                      style: context.labelMediumMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (statusChip != null)
            Positioned(
              top: 16,
              right: 0,
              child: statusChip!,
            ),
        ],
      ),
    );
  }
}
