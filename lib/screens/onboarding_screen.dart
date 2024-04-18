import 'package:ff_moneyblaster/widgets/animated_stack_swithcher.dart';
import 'package:ff_moneyblaster/widgets/glazed_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';
import 'package:ff_moneyblaster/widgets/login_text_field.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final VideoPlayerController _controller =
      VideoPlayerController.asset('assets/animations/background.mp4');

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
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: CardSwapAnimation(),
                  ),
                ),
                Container(
                  height: 70,
                  child: GlazedButton(
                            onTap: () {
                             
                              print('Button clicked!');
                            },
                            child: const Text("Create BGMI Account", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white,),),
                            // text: 'Click Me',
                          ),
                ),
                const SizedBox(height: 8),
          
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
