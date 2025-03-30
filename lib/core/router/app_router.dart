import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythm_wave_app/models/home/page/home_screen.dart';
import 'package:rhythm_wave_app/models/login/login_screen.dart';
import 'package:rhythm_wave_app/models/login/resigter_screen.dart';
import 'package:rhythm_wave_app/models/music_categories_screen/music_categories_screen.dart';
import 'package:rhythm_wave_app/models/my_profile/my_profile.dart';
import 'package:rhythm_wave_app/models/playlist/playlist.dart';
import 'package:rhythm_wave_app/models/splash/splash_page.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root_navigator');

final class AppRouter {
  AppRouter._();

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.splashPath, // ✅ SplashScreen เป็นหน้าแรก
    routes: <RouteBase>[
      GoRoute(
        path: Routes.splashPath,
        pageBuilder: (context, state) => _fadeTransitionPage(
          context: context,
          state: state,
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        path: Routes.loginPath, // ✅ เพิ่ม Route สำหรับ Login Screen
        pageBuilder: (context, state) => _fadeTransitionPage(
          context: context,
          state: state,
          child: const LoginScreen(),
        ),
      ),
       GoRoute(
        path: Routes.signUpPath, // ✅ เพิ่ม Route สำหรับ Login Screen
        pageBuilder: (context, state) => _fadeTransitionPage(
          context: context,
          state: state,
          child: const SignUpScreen(),
        ),
      ),
      GoRoute(
        path: Routes.homePath,
        pageBuilder: (context, state) => _fadeTransitionPage(
          context: context,
          state: state,
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        path: Routes.playlistPath, // ✅ Playlist Page
        pageBuilder: (context, state) => _fadeTransitionPage(
          context: context,
          state: state,
          child: const PlaylistPage(),
        ),
      ),
      GoRoute(
        path: Routes.categoriesPath, // ✅ เปลี่ยน Path ของ Music Categories
        pageBuilder: (context, state) => _fadeTransitionPage(
          context: context,
          state: state,
          child: MusicCategoriesScreen(),
        ),
      ),
      GoRoute(
        path: Routes.profilePath,
        pageBuilder: (context, state) {
          final profileImageUrl = state.extra as String? ?? '';
          return _fadeTransitionPage(
            context: context,
            state: state,
            child: ProfileScreen(profileImageUrl: profileImageUrl),
          );
        },
      ),
    ],
  );

  static Page _fadeTransitionPage({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}

// ✅ เส้นทางนำทาง (Navigation Routes)
class Routes {
  Routes._();
  static const splashPath = '/';
  static const loginPath = '/login';
  static const homePath = '/home';
  static const playlistPath = '/playlist';
  static const categoriesPath = '/categories'; // ✅ เปลี่ยน path ไม่ให้ซ้ำ
  static const profilePath = '/profile';
  static const signUpPath = '/signup';
}
