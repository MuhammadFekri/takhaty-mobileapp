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
    builder: (context) => btmSheetWidget,
  ).then((value) {
    if (onThen != null) onThen(value);
  });
}
