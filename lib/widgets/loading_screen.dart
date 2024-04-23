// import 'dart:async';

// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';

// @RoutePage(name: 'LoadingScreen')
// class LoadingScreen extends StatefulWidget {
//   const LoadingScreen({super.key});

//   @override
//   State<LoadingScreen> createState() => _LoadingScreenState();
// }

// class _LoadingScreenState extends State<LoadingScreen> {
//   final PageController _controller = PageController();
//   Timer? _timer;
//   final int _numPages = 5;  // Include the duplicate in the count

//   @override
//   void initState() {
//     super.initState();
//     _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
//       int nextPage = _controller.page!.toInt() + 1;
//       if (nextPage == _numPages) {
//         _controller.jumpToPage(0);  // Instantly reset to the first page
//       } else {
//         _controller.nextPage(
//           duration: const Duration(milliseconds: 400),
//           curve: Curves.easeIn,
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,

//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage('assets/images/loading_bg.png'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         child: Stack(
//           children: [
//             SizedBox(
//               height: 400,
//               width: 300,
//               child: PageView(
//                 controller: _controller,
//                 scrollDirection: Axis.vertical,
//                 children: <Widget>[
//                   Image.asset('assets/images/loading1.png', fit: BoxFit.fitHeight),
//                   Image.asset('assets/images/loading2.png', fit: BoxFit.fitHeight),
//                   Image.asset('assets/images/loading3.png', fit: BoxFit.fitHeight),
//                   Image.asset('assets/images/loading4.png', fit: BoxFit.fitHeight),
//                   Image.asset('assets/images/loading1.png', fit: BoxFit.fitHeight),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _controller.dispose();
//     super.dispose();
//   }

// }

import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage(name: 'LoadingScreen')
class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/loading_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: CarouselWidget(), 
        ),
      ),
    );
  }
}

// Self-contained Carousel Widget
class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final PageController _controller = PageController();
  Timer? _timer;
  final int _numPages = 5; 
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      int nextPage = _controller.page!.toInt() + 1;
      if (nextPage == _numPages) {
        _controller.jumpToPage(0);
      } else {
        _controller.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Set a specific width for the carousel content
      height: 400, // Set a specific height for the carousel content
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
                'assets/images/loading_cloud.png'), // Cloud image at the bottom
          ),
          PageView(
            controller: _controller,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Image.asset('assets/images/loading1.png', fit: BoxFit.fitHeight),
              Image.asset('assets/images/loading2.png', fit: BoxFit.fitHeight),
              Image.asset('assets/images/loading3.png', fit: BoxFit.fitHeight),
              Image.asset('assets/images/loading4.png', fit: BoxFit.fitHeight),
              Image.asset('assets/images/loading1.png', fit: BoxFit.fitHeight),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                  'assets/images/loading_cloud.png'),
            ), // Cloud image at the bottom
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }
}




class MovingGradientBar extends StatefulWidget {
  final double height;
  final double width;

  const MovingGradientBar({
    Key? key,
    this.height = 5.0, 
    this.width = 200.0,  
  }) : super(key: key);

  @override
  _MovingGradientBarState createState() => _MovingGradientBarState();
}

class _MovingGradientBarState extends State<MovingGradientBar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
            
                Colors.red, 
              ],
              stops: [0.0, 0.14, 0.28, 0.42, 0.56, 0.70, 0.84, 1.0],
              begin: Alignment(-1.0 - _controller.value * 2, 0.0),
              end: Alignment(1.0 - _controller.value * 2, 0.0),
              tileMode: TileMode.clamp,
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }}