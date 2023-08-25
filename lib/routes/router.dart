import 'package:app_medi/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginView.page, initial: true, path: '/login'),
        AutoRoute(page: RegisterView.page,path: '/Register'),
      ];
}
