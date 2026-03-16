import 'package:go_router/go_router.dart';
import 'package:study_mate/screens/analysis/analysis_screen.dart';
import 'package:study_mate/screens/auth/login_screen.dart';
import 'package:study_mate/screens/home/home_screen.dart';
import 'package:study_mate/screens/main_screen.dart';
import 'package:study_mate/screens/profile/profile_screen.dart';
import 'package:study_mate/screens/quiz/quiz_screen.dart';
import 'package:study_mate/services/auth_service.dart';

GoRouter appRouter() {
  return GoRouter(
    initialLocation: '/home',
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
