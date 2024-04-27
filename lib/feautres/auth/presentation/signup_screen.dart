import 'package:auto_route/auto_route.dart';
import 'package:ff_moneyblaster/core/constants.dart';
import 'package:ff_moneyblaster/core/widgets/animated_background.dart';
import 'package:ff_moneyblaster/routes/app_router.gr.dart';
import 'package:ff_moneyblaster/widgets/glazed_button.dart';
import 'package:ff_moneyblaster/widgets/login_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:ff_moneyblaster/feautres/auth/shared/provider.dart';

@RoutePage(name: 'SignupScreen')
class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<SignupScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading =
        ref.watch(authProvider.select((state) => state.isLoading));
    return SafeArea(
      top: false,
      left: false,
      right: false,
      child: Scaffold(
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
                        Text(
                          AppConstants.createAccount.toUpperCase(),
                          style: const TextStyle(
                              fontFamily: 'Apex',
                              // fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 32),
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
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: LoginTextField(
                              title: "Username",
                              hintText: "Enter your username",
                              controller: _usernameController,
                            ),
                          ),
                          Expanded(
                            child: LoginTextField(
                              title: "Game ID",
                              hintText: "Enter game ID",
                              controller: _gameIdController,
                            ),
                          ),
                          Expanded(
                            child: LoginTextField(
                              title: "Phone Number",
                              hintText: "Enter your phone number",
                              controller: _phoneNumberController,
                            ),
                          ),
                          Expanded(
                            child: LoginTextField(
                              title: "Create Password",
                              hintText: "Enter password",
                              controller: _passwordController,
                            ),
                          ),
                          Expanded(
                            child: LoginTextField(
                              title: "Confirm Password",
                              hintText: "Confirm your password",
                              controller: _confirmPasswordController,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 6),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      AppConstants.uploadGameIdDesc,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        "assets/images/textfield.png",
                                        width: 30.w,
                                        height: 45,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const Positioned.fill(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.0, vertical: 6),
                                        child: Center(
                                          child: Icon(Icons
                                              .add_photo_alternate_rounded),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GlazedButtonFilled(
                      onTap: () {
                        if (!isLoading) {
                          _handleSignup();
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
                      text: 'Already Have an Account? ',
                      style: const TextStyle(color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Log In',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4AE5E5),
                          ),
                          recognizer:
                              TapGestureRecognizer() // for span gestures
                                ..onTap = () async {
                                  debugPrint("Go to sign up");
                                  await context.router
                                      .push(const LoginScreen());
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
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _handleSignup() async {
    try {
      final notifier = ref.read(authProvider.notifier);
      await notifier.signUp(
        username: _usernameController.text,
        gameId: _gameIdController.text,
        phoneNumber: _phoneNumberController.text,
        password: _passwordController.text,
        voidCallback: () async {
          await context.router.replaceAll([const LoadingScreen()]);
        },
      );
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.message ?? 'An unknown error occurred')),
          );
        }
      }
    }
  }
}
