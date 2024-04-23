// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:ff_moneyblaster/feautres/auth/presentation/login_screen.dart'
    as _i2;
import 'package:ff_moneyblaster/feautres/auth/presentation/signup_screen.dart'
    as _i4;
import 'package:ff_moneyblaster/feautres/landing/presentation/onboarding_screen.dart'
    as _i3;
import 'package:ff_moneyblaster/widgets/loading_screen.dart' as _i1;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoadingScreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoadingScreen(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    OnboardingScreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OnboardingScreen(),
      );
    },
    SignupScreen.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignupScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoadingScreen]
class LoadingScreen extends _i5.PageRouteInfo<void> {
  const LoadingScreen({List<_i5.PageRouteInfo>? children})
      : super(
          LoadingScreen.name,
          initialChildren: children,
        );

  static const String name = 'LoadingScreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i5.PageRouteInfo<void> {
  const LoginScreen({List<_i5.PageRouteInfo>? children})
      : super(
          LoginScreen.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OnboardingScreen]
class OnboardingScreen extends _i5.PageRouteInfo<void> {
  const OnboardingScreen({List<_i5.PageRouteInfo>? children})
      : super(
          OnboardingScreen.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingScreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignupScreen]
class SignupScreen extends _i5.PageRouteInfo<void> {
  const SignupScreen({List<_i5.PageRouteInfo>? children})
      : super(
          SignupScreen.name,
          initialChildren: children,
        );

  static const String name = 'SignupScreen';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
