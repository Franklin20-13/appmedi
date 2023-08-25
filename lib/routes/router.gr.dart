// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_medi/features/authentication/presentation/views/login_app.dart'
    as _i1;
import 'package:app_medi/features/authentication/presentation/views/register_app.dart'
    as _i2;
import 'package:auto_route/auto_route.dart' as _i3;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LoginView.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginView(),
      );
    },
    RegisterView.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterView(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginView]
class LoginView extends _i3.PageRouteInfo<void> {
  const LoginView({List<_i3.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RegisterView]
class RegisterView extends _i3.PageRouteInfo<void> {
  const RegisterView({List<_i3.PageRouteInfo>? children})
      : super(
          RegisterView.name,
          initialChildren: children,
        );

  static const String name = 'RegisterView';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
