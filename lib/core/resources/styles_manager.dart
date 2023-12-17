import 'package:flutter/material.dart';
import 'package:takhaty/core/resources/colors_manager.dart';

class StylesManager {
  static const TextStyle textStyle16BlackRegular = TextStyle(
    color: ColorsManager.blackColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle textStyle40WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle textStyle18White300 = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w300,
  );
}
