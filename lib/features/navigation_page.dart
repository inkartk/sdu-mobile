import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdu/core/constants/app_colors.dart';
import 'package:sdu/core/router.gr.dart';

@RoutePage()
class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.systemWhite,
      appBar: AppBar(
        title: Text('Navigation page'),
        backgroundColor: AppColors.systemWhite,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              context.pushRoute(LoginRoute());
            },
            child: Container(
              child: ListTile(
                title: Text('#1 assignment'),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              context.pushRoute(SplashRoute());
            },
            child: Container(
              child: ListTile(
                title: Text('#2 assignment'),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              context.pushRoute(NewsRoute());
            },
            child: Container(
              child: ListTile(
                title: Text('#3 assignment'),
                trailing: Icon(Icons.arrow_forward_ios_sharp),
              ),
            ),
          )
        ],
      ),
    );
  }
}
