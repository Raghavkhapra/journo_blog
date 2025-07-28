// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:journo_blog_app/presentation/screens/onboard/onboard_imports.dart'
    as _i1;
import 'package:journo_blog_app/presentation/screens/Splash/splash_import.dart'
    as _i2;

/// generated route for
/// [_i1.OnboardScreen]
class OnboardScreenRoute extends _i3.PageRouteInfo<void> {
  const OnboardScreenRoute({List<_i3.PageRouteInfo>? children})
      : super(
          OnboardScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardScreenRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.OnboardScreen();
    },
  );
}

/// generated route for
/// [_i2.SplashScreen]
class SplashScreenRoute extends _i3.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i3.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.SplashScreen();
    },
  );
}
