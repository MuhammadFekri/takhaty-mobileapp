import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showBtmSheet({
  required BuildContext context,
  required Widget btmSheetWidget,
  Function? onThen,
}) {
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.r),
      ),
    ),

    // clipBehavior: Clip.antiAliasWithSaveLayer,
    context: context,
    builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: btmSheetWidget),
  ).then((value) {
    if (onThen != null) onThen(value);
  });
}
