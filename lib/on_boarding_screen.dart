import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_page.dart';
import 'intro_screens/intro_screen1.dart';
import 'intro_screens/intro_screen2.dart';
import 'intro_screens/intro_screen3.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({
    super.key,
  });

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller
  final PageController _controller = PageController();

  //on last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // page view
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const [
            IntroScreen1(),
            IntroScreen2(),
            IntroScreen3(),
          ],
        ),
        // dot indicators
        Container(
            alignment: const Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //skip
                !onLastPage
                  ? GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: const Text('saltar', style: TextStyle(color: Colors.white)))
                  : GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: const Text('saltar', style: TextStyle(color: Colors.white))),
            
                //page indicator
                SmoothPageIndicator(
                  controller: _controller, 
                  count: 3,
                  effect:  const SlideEffect(  
                      dotColor:  Color.fromARGB(80, 255, 255, 255),  
                      activeDotColor:  Colors.white  
                  ),  
                ),
            
                //next
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return const HomePage();
                              })
                          );
                        },
                        child: const Text('terminar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900)))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: const Text('siguiente', style: TextStyle(color: Colors.white)))
              ],
            ))
      ],
    ));
  }
}
