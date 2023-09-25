import 'package:flutter/material.dart';

class AppColors {
  static const LinearGradient linearGradient = LinearGradient(
    colors: [
      Color(0xff16b5fc),
      Color(0xff3d4eaf),
    ],
    stops: [0, 1],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const LinearGradient appbarLinearGradient = LinearGradient(
    colors: [
      Color(0xff3d4eaf),
      Color(0xff16b5fc),
    ],
    stops: [0, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const kWhite = Colors.white;
}
