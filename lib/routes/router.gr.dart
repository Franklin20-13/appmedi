// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_medi/features/authentication/presentation/views/login_app.dart'
    as _i2;
import 'package:app_medi/features/authentication/presentation/views/register_app.dart'
    as _i3;
import 'package:app_medi/features/diary_treatment/domain/models/recipe_model.dart'
    as _i6;
import 'package:app_medi/features/doctor/presentation/views/detail.dart' as _i1;
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ContentDetail.name: (routeData) {
      final args = routeData.argsAs<ContentDetailArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ContentDetail(
          key: args.key,
          model: args.model,
        ),
      );
    },
    LoginView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    RegisterView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterView(),
      );
    },
  };
}

/// generated route for
/// [_i1.ContentDetail]
class ContentDetail extends _i4.PageRouteInfo<ContentDetailArgs> {
  ContentDetail({
    _i5.Key? key,
    required _i6.RecipeModel model,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          ContentDetail.name,
          args: ContentDetailArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'ContentDetail';

  static const _i4.PageInfo<ContentDetailArgs> page =
      _i4.PageInfo<ContentDetailArgs>(name);
}

class ContentDetailArgs {
  const ContentDetailArgs({
    this.key,
    required this.model,
  });

  final _i5.Key? key;

  final _i6.RecipeModel model;

  @override
  String toString() {
    return 'ContentDetailArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i4.PageRouteInfo<void> {
  const LoginView({List<_i4.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.RegisterView]
class RegisterView extends _i4.PageRouteInfo<void> {
  const RegisterView({List<_i4.PageRouteInfo>? children})
      : super(
          RegisterView.name,
          initialChildren: children,
        );

  static const String name = 'RegisterView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
