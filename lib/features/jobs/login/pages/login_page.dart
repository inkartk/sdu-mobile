import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdu/core/extensions/widget_extensions.dart';
import 'package:sdu/core/router.gr.dart';
import 'package:sdu/features/jobs/login/widgets/login_list_tile_widget.dart';
import 'package:sdu/gen/assets.gen.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF12AA73),
              Color(0xFF135B46),
            ],
          ),
          borderRadius: BorderRadius.circular(28),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 24),
                Assets.png.smartrLogo.image(),
                const SizedBox(height: 24),
                ClipOval(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Assets.png.image.image(
                      fit: BoxFit.cover,
                      alignment: Alignment(0.25, -0.7),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Fresh look, same login.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginListTileWidget(
                        iconData: Icons.swap_vert,
                        title:
                            'SmartRecruiters candidate portal is now Smartr.',
                      ),
                      LoginListTileWidget(
                        iconData: Icons.login,
                        title:
                            'Enter the same login info used for your SmartrProfile',
                      ),
                      LoginListTileWidget(
                        iconData: Icons.refresh,
                        title:
                            'If login details were saved, you may need to re-save.',
                      ),
                    ],
                  ),
                ).paddingOnly(bottom: 16),
                const Text(
                  'Why Smartr? Read here',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ).paddingOnly(bottom: 8),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBFDBD1),
                      foregroundColor: const Color(0xFF135B46),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      context.pushRoute(JobsRoute());
                    },
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
