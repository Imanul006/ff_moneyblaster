import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/widgets/animated_background.dart';
import 'package:ff_moneyblaster/feautres/auth/shared/provider.dart';
import 'package:ff_moneyblaster/routes/app_router.gr.dart';
import 'package:ff_moneyblaster/widgets/glazed_button.dart';
import 'package:ff_moneyblaster/widgets/login_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/gestures.dart';



@RoutePage(name: 'LoginScreen')
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final VideoPlayerController _controller =
      VideoPlayerController.asset('assets/animations/background.mp4');
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(authProvider.select((state) => state.isLoading));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const AnimatedBackground(),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: SvgPicture.asset(
                          "assets/images/Login.svg",
                          color: Colors.white,
                          width: 90,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Transform.translate(
                        offset: const Offset(-120, 0),
                        child: SvgPicture.asset(
                          "assets/images/underline.svg",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 4,
                  child: SizedBox.expand(),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: LoginTextField(
                              title: "User ID",
                              hintText: "Create an user ID",
                              controller: TextEditingController(),
                            ),
                          ),
                        ),
                        // Expanded(
                        //   child: LoginTextField(
                        //     title: "Game ID",
                        //     hintText: "Enter game ID",
                        //     controller: TextEditingController(),
                        //   ),
                        // ),
                        Expanded(
                          child: LoginTextField(
                            title: "Password",
                            hintText: "Enter Password",
                            controller: TextEditingController(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GlazedButton(
                    onTap: () {
                      if (!isLoading) {
                        ref.read(authProvider.notifier).signIn(
                              _userIdController.text,
                              _passwordController.text,
                            );
                      }
                    },
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Continue",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
              
                  ),
                ),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an Account? ',
                    style: const TextStyle(color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign Up',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4AE5E5),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            print("Go to sign up");
                            await context.router.push(const SignupScreen());
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}