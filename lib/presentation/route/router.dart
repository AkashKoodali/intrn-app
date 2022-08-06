import 'package:auto_route/auto_route.dart';
import 'package:intern_app/presentation/core/splash_page.dart';
import 'package:intern_app/presentation/onboarding/getting_started.dart';
import 'package:intern_app/presentation/onboarding/sign_in/sign_in.dart';
import 'package:intern_app/presentation/onboarding/sign_up/sign_up.dart';
import 'package:intern_app/presentation/root/root_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: GettingStarted),
    AutoRoute(page: SignIn),
    AutoRoute(page: SignUp),
    AutoRoute(page: RootPage),
  ],
)
class $AppRouter {}
