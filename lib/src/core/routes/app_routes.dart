import 'package:easy_asd/src/features/home/home_page.dart';
import 'package:easy_asd/src/features/splash/ui/splash_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (_, state) => const SplashPage(),
    ),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (_, state) => const HomePage(),
    ),
  ],
);
