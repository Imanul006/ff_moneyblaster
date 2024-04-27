import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/widgets/animated_background.dart';
import 'package:ff_moneyblaster/feautres/auth/shared/provider.dart';
import 'package:ff_moneyblaster/routes/app_router.gr.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage(name: 'SplashScreen')
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 2));
      final authNotifer = ref.read(authProvider.notifier);
      final state = ref.read(authProvider);
      await authNotifer.checkCurrentUser();

      if (state.isUser) {
        await authNotifer.checkIsUserVerified().then((value) {
          if (state.isUserVerified) {
            context.router.replaceAll([const BaseRoute()]);
          } else {
            context.router.replaceAll([const LoadingScreen()]);
          }
        });
      } else {
        context.router.replaceAll([const OnboardingScreen()]);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        child: Stack(
          children: [
            AnimatedBackground(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
