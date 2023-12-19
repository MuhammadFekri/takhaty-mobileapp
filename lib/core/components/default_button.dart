import 'dart:core';

import 'package:flutter/material.dart';
import 'package:takhaty/core/resources/colors_manager.dart';

class DefaultButtonWidget extends StatelessWidget {
  final double width;
  final Color background;
  final Color borderColor;
  final bool isUpperCase;
  final double radius;
  final bool disable;
  final bool isBorder;
  final VoidCallback function;
  final String text;
  final bool isLoading;

  final double? customHeight;
  final TextStyle? customTextStyle;
  final double fontSize;

  const DefaultButtonWidget(
      {Key? key,
      this.width = double.infinity,
      this.background = ColorsManager.primaryColor,
      this.borderColor = Colors.white,
      this.isBorder = false,
      this.isUpperCase = true,
      this.radius = 12.0,
      required this.function,
      required this.text,
      this.disable = false,
      this.isLoading = false,
      this.customHeight,
      this.customTextStyle,
      this.fontSize = 16.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SizedBox(
            height: 48,
            child: Center(child: CircularProgressIndicator()),
          )
        : Container(
            width: width,
            height: customHeight,
            decoration: BoxDecoration(
              color: disable ? Colors.grey : background,
              border: isBorder
                  ? Border.all(
                      color: borderColor,
                      width: 1.5,
                    )
                  : null,
              borderRadius: BorderRadius.circular(
                radius,
              ),
            ),
            child: MaterialButton(
              onPressed: disable ? null : function,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                radius,
              )),
              height: 48,
              child: Text(
                /*isUpperCase ? text.toUpperCase() : text.toLowerCase(),*/ text,
                style: customTextStyle ??
                    TextStyle(
                      color: borderColor,
                      fontSize: fontSize,
                    ),
              ),
            ),
          );
  }
}
