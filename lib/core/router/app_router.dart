import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythm_wave_app/models/home/page/home_screen.dart';
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
    initialLocation: Routes.splashPath, // ✅ SplashScreen เป็นหน้าแรกเสมอ
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
        path: Routes.homePath,
        pageBuilder: (context, state) => _fadeTransitionPage(
          context: context,
          state: state,
          child: const HomeScreen(),
        ),
      ),
      GoRoute(
        path: Routes.playlistPath,
        pageBuilder: (context, state) => _fadeTransitionPage(
          context: context,
          state: state,
          child: const PlaylistPage(),
        ),
      ),
        GoRoute(
        path: Routes.playlistPath,
        pageBuilder: (context, state) => _fadeTransitionPage(
          context: context,
          state: state,
          child:  MusicCategoriesScreen(),
        ),
      ),
      GoRoute(
        path: Routes.profilePath,
        pageBuilder: (context, state) => _fadeTransitionPage(
          context: context,
          state: state,
          child: const ProfileScreen(profileImageUrl: ''),
        ),
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

// ✅ กำหนด path สำหรับ navigation
class Routes {
  Routes._();
  static const splashPath = '/';
  static const homePath = '/home';
  static const playlistPath = '/playlist';
  static const profilePath = '/profile';
}
