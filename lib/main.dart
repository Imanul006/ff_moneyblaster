import 'package:ff_moneyblaster/firebase_options.dart';
import 'package:ff_moneyblaster/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return
        // providers: [
        //   Provider<IAuthService>(
        //     create: (_) => AuthService(FirebaseAuth.instance),
        //   ),
        //   StreamProvider(
        //     create: (context) => context.read<AuthService>().authStateChanges,
        //     initialData: null,
        //   ),
        // ],
        // child:
        Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: gameThemeDark,
        routerConfig: _appRouter.config(),
      );
    });
  }
}
