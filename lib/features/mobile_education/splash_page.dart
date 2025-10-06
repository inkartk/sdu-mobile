import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdu/core/constants/app_colors.dart';
import 'package:sdu/core/router.gr.dart';
import 'package:sdu/features/mobile_education/widgets/circles_painter.dart';
import 'package:sdu/features/mobile_education/widgets/rounded_title.dart';
import 'package:sdu/features/theme/theme_extensions.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  void _goNext() {
    if (!mounted) return;
    context.replaceRoute(InfoRoute());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mintWhite,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: CustomPaint(
                painter: ConcentricCirclesPainter(
                  ringColor: AppColors.systemWhite,
                  ringCount: 4,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: RoundedTitle(),
            ),
            Align(
              alignment: const Alignment(0, 0.22),
              child: Text(
                'EmpowerED',
                textAlign: TextAlign.center,
                style: context.bodyLargeBold?.copyWith(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
