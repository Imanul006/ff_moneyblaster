import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/core/widgets/animated_background.dart';
import 'package:ff_moneyblaster/routes/app_router.gr.dart';
import 'package:ff_moneyblaster/widgets/animated_stack_swithcher.dart';
import 'package:ff_moneyblaster/widgets/glazed_button.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'OnboardingScreen')
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        top: false,
        left: false,
        right: false,
        child: Stack(
          children: [
            const AnimatedBackground(),
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppConstants.appName.toUpperCase(),
                        style: const TextStyle(
                            fontFamily: 'Apex',
                            // fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 32),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppConstants.tournament.toUpperCase(),
                        style: TextStyle(
                          // fontFamily: 'Apex',
                          // fontWeight: FontWeight.w700,
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 16,
                        ),
                      ),
                      // Transform.translate(
                      //   offset: const Offset(-120, 0),
                      //   child: SvgPicture.asset(
                      //     "assets/images/underline.svg",
                      //     color: Colors.white,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: CardSwapAnimation(),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: GlazedButton(
                    onTap: () async {
                      debugPrint('Button clicked!');
                      await context.router.push(const SignupScreen());
                    },
                    child: Text(
                      "Create BGMI Account",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF00DEDE).withOpacity(0.7),
                      ),
                    ),
                    // text: 'Click Me',
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: GlazedButtonFilled(
                    onTap: () async {
                      debugPrint('Login Button clicked!');
                      await context.router.push(const LoginScreen());
                    },
                    child: const Text(
                      "Login BGMI Account",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
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
