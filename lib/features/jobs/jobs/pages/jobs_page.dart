import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdu/core/assets/assets.gen.dart';
import 'package:sdu/core/constants/app_colors.dart';
import 'package:sdu/features/jobs/jobs/widgets/job_card.dart';
import 'package:sdu/features/jobs/jobs/widgets/paystack_card.dart';
import 'package:sdu/features/jobs/jobs/widgets/section_label.dart';
import 'package:sdu/features/jobs/jobs/widgets/status_card.dart';

@RoutePage()
class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenMint,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Assets.png.avatar.image(
                        width: 45,
                        height: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        size: 24,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const SectionLabel(text: 'DESIGNER'),
                const SizedBox(height: 12),
                JobCard(
                  titleText: 'Junior UX Designer',
                  companyText: 'Canva',
                  leftChip: const MintCard(text: 'Paystack'),
                  rightText: '\$40–60k/yearly',
                ),
                const SizedBox(height: 14),
                JobCard(
                  titleText: 'Junior Product Designer',
                  companyText: 'Canva',
                  leftChip: const MintCard(text: 'Paystack'),
                  rightText: '\$40–60k/yearly',
                  statusChip: StatusCard(
                    text: 'Applied',
                    bg: const Color(0xFF07864B),
                    icon: Icons.check_circle_rounded,
                  ),
                ),
                const SizedBox(height: 14),
                JobCard(
                  titleText: 'Middle motion Designer',
                  companyText: 'Canva',
                  leftChip: const MintCard(text: 'Paystack'),
                  rightText: '\$40–60k/yearly',
                  statusChip: StatusCard(
                      text: 'Expires Soon',
                      bg: Color(0xFFF4A61F),
                      icon: Icons.info),
                ),
                const SizedBox(height: 22),
                const SectionLabel(text: 'ANDROID'),
                const SizedBox(height: 12),
                JobCard(
                  titleText: 'Junior Android developer',
                  companyText: 'Kotlin, Java',
                  leftChip: const MintCard(text: 'Paystack'),
                  rightText: '\$40–60k/yearly',
                ),
                const SizedBox(height: 14),
                JobCard(
                  titleText: 'Middle Android developer',
                  companyText: 'Kotlin, Java',
                  leftChip: const MintCard(text: 'Paystack'),
                  rightText: '\$40–60k/yearly',
                  statusChip: StatusCard(
                      text: 'Expires Soon',
                      bg: Color(0xFFF4A61F),
                      icon: Icons.info),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
