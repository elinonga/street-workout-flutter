import 'package:flutter/material.dart';
import 'package:strete_workout/constants.dart';
import 'package:strete_workout/models/slides.dart';
import 'package:strete_workout/slider_dots.dart';

class WelcomeSliders extends StatefulWidget {
  final int index;
  const WelcomeSliders(this.index);

  @override
  State<WelcomeSliders> createState() => _WelcomeSlidersState();
}

class _WelcomeSlidersState extends State<WelcomeSliders> {

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*1.5,

      /// Background ya Container Nzima
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                welcomeSlideList[widget.index].backgroundOne,
                welcomeSlideList[widget.index].backgroundTwo
              ]
          ),

      ),

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          /// Image - Slider
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.height*0.4,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(welcomeSlideList[widget.index].imageUrl),
                  fit: BoxFit.fill
              ),
            ),
          ),
          const SizedBox(height: 20),


          /// Title of the Slider
          Text(welcomeSlideList[widget.index].title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 35,
              color: kTitleTextColor,
              fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 10),


          /// Description ndogo ya hii slider
          Text(welcomeSlideList[widget.index].description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: kBodyTextColor,
            ),),


          /// Container ya Slider Dots
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 50),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0 ; i < welcomeSlideList.length; i ++)
                  if(i == _currentPage)
                    SlideDotsWelcome(true)
                  else
                    SlideDotsWelcome(false)
              ],
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(
                height: 50, width: 150,
                child: TextButton(onPressed: () {
                  print("Get Started");
                },

                    child: const Text("I'M NEW", style: TextStyle(
                        fontSize: 20, color: kTitleTextColor
                    ),)),

                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(22.0),
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [kButtonColor1, kButtonColor2]
                    ),

                    // boxShadow: const [
                    //   BoxShadow(
                    //     color: kButtonColor1,
                    //     spreadRadius: 0,
                    //     blurRadius: 5,
                    //     offset: Offset(3, 3),
                    //   )
                    // ]

                ),


              ),

              Container(
                height: 50, width: 150,
                child: TextButton(onPressed: () {
                  print("Get Started");
                },

                    child: const Text("LOG IN",
                      style: TextStyle(
                          fontSize: 20, color: kTitleTextColor
                      ),)
                ),

                decoration: BoxDecoration(
                  border: Border.all(
                      color: kBodyTextColor,
                      width: 3
                  ),
                  borderRadius: BorderRadius.circular(22.0),
                ),

              ),


            ],
          ),


        ],
      ),
    );
  }
}

