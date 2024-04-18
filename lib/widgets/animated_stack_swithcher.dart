import 'package:flutter/material.dart';

class CardSwapAnimation extends StatefulWidget {
  const CardSwapAnimation({super.key});

  @override
  State<CardSwapAnimation> createState() => _CardSwapAnimationState();
}

class _CardSwapAnimationState extends State<CardSwapAnimation> {
  bool _toggle = true; // State to track which card is on top

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: _toggle
                    ? Image.asset('assets/images/gamecard1.png', key: const ValueKey(1))
                    : Image.asset('assets/images/gamecard2.png', key: const ValueKey(2)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_upward),
                onPressed: () => setState(() => _toggle = !_toggle),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_downward),
                onPressed: () => setState(() => _toggle = !_toggle),
              ),
            ],
          ),
        ],
      );
  }
}