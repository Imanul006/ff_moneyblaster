import 'package:ff_moneyblaster/widgets/glazed_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';
import 'package:ff_moneyblaster/widgets/login_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final VideoPlayerController _controller =
      VideoPlayerController.asset('assets/animations/background.mp4');

        final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.initialize().then((_) {
      _controller.play();
      _controller.setLooping(true);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          VideoPlayer(_controller),
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
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
                            child: const Text("Continue", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white,),),
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
              ..onTap = () {
                print("Go to sign up");
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




