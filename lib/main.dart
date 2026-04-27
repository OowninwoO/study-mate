import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:study_mate/app_router.dart';
import 'package:study_mate/firebase_options.dart';
import 'package:study_mate/providers/user/user_me_provider.dart';
import 'package:study_mate/theme/app_theme.dart';
import 'package:toastification/toastification.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<MainApp> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(userMeProvider.notifier).autoLogin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: GlobalLoaderOverlay(
        child: MaterialApp.router(
          routerConfig: appRouter(ref),
          theme: AppTheme.light,
        ),
      ),
    );
  }
}
