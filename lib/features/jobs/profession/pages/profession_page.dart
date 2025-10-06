import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdu/core/assets/assets.gen.dart';
import 'package:sdu/core/constants/app_colors.dart';
import 'package:sdu/core/extensions/widget_extensions.dart';
import 'package:sdu/features/jobs/profession/widgets/bullet.dart';
import 'package:sdu/features/jobs/profession/widgets/fact_block.dart';
import 'package:sdu/features/jobs/profession/widgets/mint_divider.dart';
import 'package:sdu/features/jobs/profession/widgets/section.dart';
import 'package:sdu/features/theme/theme_extensions.dart';

@RoutePage()
class ProfessionPage extends StatelessWidget {
  const ProfessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.favorite_border,
            color: AppColors.systemBlack,
          ).paddingOnly(right: 16)
        ],
        backgroundColor: AppColors.systemWhite,
      ),
      backgroundColor: AppColors.systemWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Assets.png.jobLogo.image(width: 60, height: 60),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Junior UX Designer',
                    style: context.bodyLargeBold,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Canva',
                    style: context.bodyMediumMedium,
                  ),
                  const SizedBox(height: 4),
                  Text('Posted on 3 March', style: context.labelMediumRegular),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
          const MintDivider(),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: FactBlock(
                  title: 'APPLY BEFORE',
                  childText: '03 June, 2022',
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: FactBlock(
                  title: 'JOB NATURE',
                  chipText: 'Full-time',
                ),
              ),
            ],
          ).paddingOnly(left: 16),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: FactBlock(
                  title: 'SALARY RANGE',
                  childText: '40k - 60k/yearly',
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: FactBlock(
                  title: 'JOB LOCATION',
                  childText: 'Work from anywhere',
                ),
              ),
            ],
          ).paddingOnly(left: 16),
          const SizedBox(height: 16),
          const MintDivider(),
          Section(
            title: 'JOB DESCRIPTION',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Can you bring creative human-centered ideas to life and make great things happen beyond what meets the eye?\n'
                  'We believe in teamwork, fun, complex projects, diverse perspectives, and simple solutions. How about you? We\'re looking for a like-minded',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(height: 1.35),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'See more',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: const Color(0xFF2E7D32),
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    const SizedBox(width: 6),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                      color: Color(0xFF2E7D32),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const MintDivider(),
          Section(
            title: 'ROLES AND RESPONSIBILITIES',
            bottomRadius: const Radius.circular(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Bullet(
                  text:
                      'Drive the design process with cross-functional partners and design leads.',
                ),
                Bullet(
                  text:
                      'Design new experiences and patterns in a complex ecosystem and across platforms.',
                ),
                Bullet(
                  text:
                      'Partner with UX Research and Content Strategists through the design process.',
                ),
                Bullet(
                  text: 'Work closely with Product and Engineering to',
                ),
              ],
            ),
          ),
        ],
      ).paddingAll(),
    );
  }
}
