import 'dart:async';
import 'package:flutter/material.dart';
import 'package:strete_workout/models/slides.dart';
import 'package:strete_workout/welcome.dart';

class GettingStartedPage extends StatefulWidget {
  const GettingStartedPage({Key? key}) : super(key: key);

  @override
  _GettingStartedPageState createState() => _GettingStartedPageState();
}

class _GettingStartedPageState extends State<GettingStartedPage> {

  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  /// This helps to create an automatic transition in them sliders
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if(_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);

    });
  }

  /// To Dispose the page controller, this improves out performance
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  /// It will automatically change to different pages
  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Column(children: [

            /// Slider Details
            SizedBox(
              height: MediaQuery.of(context).size.height,

              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: _onPageChanged,
                    itemCount: welcomeSlideList.length,
                    itemBuilder: (context, index) => WelcomeSliders(index),
                  ),
                ],
              ),
            ),

          ],
          ),
        ],
      ),
    );
  }
}
