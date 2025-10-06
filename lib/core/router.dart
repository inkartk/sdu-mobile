import 'package:auto_route/auto_route.dart';
import 'package:sdu/features/mobile_education/login_education_page.dart';
import 'package:sdu/features/mobile_education/reset_password_page.dart';
import 'package:sdu/features/mobile_education/splash_page.dart';

import 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: NavigationRoute.page, initial: true),
        AutoRoute(
          page: JobsRoute.page,
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: ProfessionRoute.page,
        ),
        AutoRoute(
          page: SplashRoute.page,
        ),
        AutoRoute(
          page: InfoRoute.page,
        ),
        AutoRoute(
          page: RegisterRoute.page,
        ),
        AutoRoute(
          page: LoginEducationRoute.page,
        ),
        AutoRoute(
          page: ResetPasswordRoute.page,
        ),
      ];
}
