import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mate/enums/quiz_mode.dart';
import 'package:study_mate/models/quiz/quiz_set_model.dart';
import 'package:study_mate/screens/analysis/analysis_screen.dart';
import 'package:study_mate/screens/auth/login_screen.dart';
import 'package:study_mate/screens/home/home_screen.dart';
import 'package:study_mate/screens/main_screen.dart';
import 'package:study_mate/screens/profile/profile_screen.dart';
import 'package:study_mate/screens/quiz/quiz_play_screen.dart';
import 'package:study_mate/screens/quiz/quiz_screen.dart';
import 'package:study_mate/services/auth_service.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.asBroadcastStream().listen((_) {
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

GoRouter appRouter() {
  return GoRouter(
    initialLocation: '/home',
    refreshListenable: GoRouterRefreshStream(AuthService.authStateChanges),
    redirect: (context, state) {
      final isLoggedIn = AuthService.currentUser != null;
      final isOnLoginScreen = state.matchedLocation == '/login';

      if (!isLoggedIn) {
        return !isOnLoginScreen ? '/login' : null;
      }

      if (isOnLoginScreen) {
        return '/home';
      }

      return null;
    },
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: '/quiz_play',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;

          return QuizPlayScreen(
            quizSet: extra['quizSet'] as QuizSetModel,
            quizMode: extra['quizMode'] as QuizMode,
          );
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/quiz',
                builder: (context, state) => const QuizScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/analysis',
                builder: (context, state) => const AnalysisScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
