import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:strete_workout/constants.dart';

class WelcomeSlide {
  final String imageUrl;
  final String title;
  final String description;
  final Color backgroundOne;
  final Color backgroundTwo;

  WelcomeSlide(this.imageUrl, this.title, this.description,
      this.backgroundOne, this.backgroundTwo);
}

final welcomeSlideList = [
  WelcomeSlide('assets/2.png', 'Workout at home, \noutside or in a gym',
      "Workout anywhere without \nany equipment",
      kBackgroundColor11, kBackgroundColor12
  ),

  WelcomeSlide('assets/1.png', 'Street Workout\n Built Skills',
      "Take your training to the next level \nand become a BEAST!",
      kBackgroundColor21, kBackgroundColor22
  ),

  WelcomeSlide('assets/3.png', 'Learn the secret\n techniques',
      "Our programs have been tested \nby professional instructors & athletes.",
      kBackgroundColor31, kBackgroundColor32
  ),
];
