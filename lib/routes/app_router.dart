import 'package:auto_route/auto_route.dart';

import './app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardingScreen.page, path: '/onboarding'),
        AutoRoute(page: LoginScreen.page, path: '/login'),
        AutoRoute(page: SignupScreen.page, path: '/signup'),
        AutoRoute(page: HomeScreen.page, path: '/home', initial: true),
      ];
}
