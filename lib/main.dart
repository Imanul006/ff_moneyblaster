import 'package:ff_moneyblaster/firebase_options.dart';
import 'package:ff_moneyblaster/screens/login_screen.dart';
import 'package:ff_moneyblaster/screens/onboarding_screen.dart';
import 'package:ff_moneyblaster/screens/signup_screen.dart';
import 'package:ff_moneyblaster/services/auth_service.dart';
import 'package:ff_moneyblaster/widgets/animated_stack_swithcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChanges, initialData: null,
        ),
      ],
      child: const MaterialApp(
        home: SignupScreen(),
      ),
    );
  }
}
