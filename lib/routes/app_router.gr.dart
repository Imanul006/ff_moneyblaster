// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:ff_moneyblaster/feautres/auth/presentation/login_screen.dart'
    as _i4;
import 'package:ff_moneyblaster/feautres/auth/presentation/signup_screen.dart'
    as _i6;
import 'package:ff_moneyblaster/feautres/base/presentation/base_screen.dart'
    as _i1;
import 'package:ff_moneyblaster/feautres/home/presentation/home_screen.dart'
    as _i2;
import 'package:ff_moneyblaster/feautres/landing/presentation/onboarding_screen.dart'
    as _i5;
import 'package:ff_moneyblaster/feautres/splash/splash.dart' as _i7;
import 'package:ff_moneyblaster/widgets/loading_screen.dart' as _i3;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    BaseRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BasePage(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    LoadingScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoadingScreen(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginScreen(),
      );
    },
    OnboardingScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OnboardingScreen(),
      );
    },
    SignupScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignupScreen(),
      );
    },
    SplashScreen.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BasePage]
class BaseRoute extends _i8.PageRouteInfo<void> {
  const BaseRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreen extends _i8.PageRouteInfo<void> {
  const HomeScreen({List<_i8.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoadingScreen]
class LoadingScreen extends _i8.PageRouteInfo<void> {
  const LoadingScreen({List<_i8.PageRouteInfo>? children})
      : super(
          LoadingScreen.name,
          initialChildren: children,
        );

  static const String name = 'LoadingScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginScreen]
class LoginScreen extends _i8.PageRouteInfo<void> {
  const LoginScreen({List<_i8.PageRouteInfo>? children})
      : super(
          LoginScreen.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OnboardingScreen]
class OnboardingScreen extends _i8.PageRouteInfo<void> {
  const OnboardingScreen({List<_i8.PageRouteInfo>? children})
      : super(
          OnboardingScreen.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SignupScreen]
class SignupScreen extends _i8.PageRouteInfo<void> {
  const SignupScreen({List<_i8.PageRouteInfo>? children})
      : super(
          SignupScreen.name,
          initialChildren: children,
        );

  static const String name = 'SignupScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SplashScreen]
class SplashScreen extends _i8.PageRouteInfo<void> {
  const SplashScreen({List<_i8.PageRouteInfo>? children})
      : super(
          SplashScreen.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreen';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
