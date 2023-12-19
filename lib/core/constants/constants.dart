import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/resources/colors_manager.dart';

const String baseUrl = 'https://takhaty20231214154204.azurewebsites.net/';
const String appName = 'تخطي';
const String fontFamily = 'Tajawal';

OutlineInputBorder kOutlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(12.r));

OutlineInputBorder kOutlineFocusedInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: ColorsManager.hintGreyColor),
    borderRadius: BorderRadius.circular(12.r));
