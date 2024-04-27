// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:ff_moneyblaster/feautres/auth/presentation/login_screen.dart'
    as _i5;
import 'package:ff_moneyblaster/feautres/auth/presentation/signup_screen.dart'
    as _i8;
import 'package:ff_moneyblaster/feautres/base/presentation/base_screen.dart'
    as _i1;
import 'package:ff_moneyblaster/feautres/home/presentation/home_screen.dart'
    as _i2;
import 'package:ff_moneyblaster/feautres/landing/presentation/onboarding_screen.dart'
    as _i6;
import 'package:ff_moneyblaster/feautres/leaderboard/presentation/leaderboard_screen.dart'
    as _i3;
import 'package:ff_moneyblaster/feautres/profile/presentation/profile_screen.dart'
    as _i7;
import 'package:ff_moneyblaster/feautres/splash/splash.dart' as _i9;
import 'package:ff_moneyblaster/feautres/wallet/presentation/wallet_screen.dart'
    as _i10;
import 'package:ff_moneyblaster/widgets/loading_screen.dart' as _i4;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    BaseRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BasePage(),
      );
    },
    HomeScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    LeaderboardScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LeaderbaordScreen(),
      );
    },
    LoadingScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoadingScreen(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    OnboardingScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnboardingScreen(),
      );
    },
    ProfileScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
      );
    },
    SignupScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SignupScreen(),
      );
    },
    SplashScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashScreen(),
      );
    },
    WalletScreen.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BasePage]
class BaseRoute extends _i11.PageRouteInfo<void> {
  const BaseRoute({List<_i11.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreen extends _i11.PageRouteInfo<void> {
  const HomeScreen({List<_i11.PageRouteInfo>? children})
      : super(
          HomeScreen.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LeaderbaordScreen]
class LeaderboardScreen extends _i11.PageRouteInfo<void> {
  const LeaderboardScreen({List<_i11.PageRouteInfo>? children})
      : super(
          LeaderboardScreen.name,
          initialChildren: children,
        );

  static const String name = 'LeaderboardScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoadingScreen]
class LoadingScreen extends _i11.PageRouteInfo<void> {
  const LoadingScreen({List<_i11.PageRouteInfo>? children})
      : super(
          LoadingScreen.name,
          initialChildren: children,
        );

  static const String name = 'LoadingScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginScreen extends _i11.PageRouteInfo<void> {
  const LoginScreen({List<_i11.PageRouteInfo>? children})
      : super(
          LoginScreen.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnboardingScreen]
class OnboardingScreen extends _i11.PageRouteInfo<void> {
  const OnboardingScreen({List<_i11.PageRouteInfo>? children})
      : super(
          OnboardingScreen.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileScreen extends _i11.PageRouteInfo<void> {
  const ProfileScreen({List<_i11.PageRouteInfo>? children})
      : super(
          ProfileScreen.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SignupScreen]
class SignupScreen extends _i11.PageRouteInfo<void> {
  const SignupScreen({List<_i11.PageRouteInfo>? children})
      : super(
          SignupScreen.name,
          initialChildren: children,
        );

  static const String name = 'SignupScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashScreen]
class SplashScreen extends _i11.PageRouteInfo<void> {
  const SplashScreen({List<_i11.PageRouteInfo>? children})
      : super(
          SplashScreen.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.WalletScreen]
class WalletScreen extends _i11.PageRouteInfo<void> {
  const WalletScreen({List<_i11.PageRouteInfo>? children})
      : super(
          WalletScreen.name,
          initialChildren: children,
        );

  static const String name = 'WalletScreen';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
