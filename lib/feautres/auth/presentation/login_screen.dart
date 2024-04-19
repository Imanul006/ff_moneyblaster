import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/widgets/animated_background.dart';
import 'package:ff_moneyblaster/routes/app_router.gr.dart';
import 'package:ff_moneyblaster/widgets/glazed_button.dart';
import 'package:ff_moneyblaster/widgets/login_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

@RoutePage(name: 'LoginScreen')
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final VideoPlayerController _controller =
      VideoPlayerController.asset('assets/animations/background.mp4');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                      print('Button clicked!');
                    },
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    // text: 'Click Me',
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
