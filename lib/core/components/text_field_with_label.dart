import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constants.dart';
import '../resources/colors_manager.dart';
import '../resources/styles_manager.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    Key? key,
    this.validator,
    this.onSaved,
    this.onTap,
    this.onSubmit,
    this.hintText,
    this.labelText,
    this.titleText,
    this.obscureText = false,
    this.keyboardType = TextInputType.name,
    this.controller,
    this.inputBorder,
    this.readOnly = false,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.inputAction,
    this.autofocus = false,
    this.capitalization = TextCapitalization.none,
    this.labelColor,
    this.filled,
    this.fillColor,
    this.autoValidateMode,
    this.maxLines = 1,
    this.minLines = 1,
    this.initialValue,
    this.maxLength,
    this.counterText,
    this.requiredField = false,
    this.onChange,
    this.autofillHints,
    this.shadow = false,
    this.textAlignVertical,
    this.textAlign,
    this.height,
    this.forceHeight = false,
    this.style,
    this.hintSize,
    this.onEditingComplete,
    this.textDirection,
    this.titlePrefix,
    this.trialing,
  }) : super(key: key);

  final String? Function(String?)? validator;
  final void Function(String? value)? onSaved;
  final void Function()? onTap;
  final void Function(String)? onSubmit;
  final VoidCallback? onEditingComplete;
  final String? hintText;
  final String? labelText;
  final String? titleText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final InputBorder? inputBorder;
  final bool readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final TextInputAction? inputAction;
  final bool autofocus;
  final TextCapitalization capitalization;
  final Color? labelColor;
  final bool? filled;
  final Color? fillColor;
  final AutovalidateMode? autoValidateMode;
  final int maxLines;
  final int minLines;
  final String? initialValue;
  final int? maxLength;
  final String? counterText;
  final bool requiredField;
  final void Function(String value)? onChange;
  final String? autofillHints;
  final bool shadow;
  final TextAlignVertical? textAlignVertical;
  final TextAlign? textAlign;
  final double? height;
  final bool forceHeight;
  final TextStyle? style;
  final double? hintSize;
  final TextDirection? textDirection;
  final Widget? titlePrefix;
  final Widget? trialing;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (titleText != null) ...[
          Row(
            children: [
              if (titlePrefix != null) ...[
                titlePrefix!,
                SizedBox(width: 10.w),
              ],
              Padding(
                padding: prefixIcon != null
                    ? const EdgeInsetsDirectional.only(start: 10)
                    : EdgeInsets.zero,
                child: RichText(
                  text: TextSpan(
                    text: titleText,
                    style: StylesManager.textStyle16BlackRegular.copyWith(
                        fontWeight: FontWeight.normal, color: labelColor),
                    children: requiredField
                        ? [
                            TextSpan(
                              text: ' *',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.red),
                            )
                          ]
                        : null,
                  ),
                ),
              ),
              if (trialing != null) const Spacer(),
              if (trialing != null) trialing!,
            ],
          ),
          SizedBox(height: 16.h),
        ],
        TextFormField(
          key: key,
          controller: controller,
          focusNode: focusNode,
          readOnly: readOnly,
          validator: validator,
          onSaved: onSaved,
          onTap: onTap,
          onChanged: onChange,
          onFieldSubmitted: onSubmit,
          onEditingComplete: onEditingComplete,
          textInputAction: inputAction,
          obscureText: obscureText,
          obscuringCharacter: '●',
          keyboardType: keyboardType,
          autovalidateMode: autoValidateMode,
          autofocus: autofocus,
          textCapitalization: capitalization,
          maxLines: maxLines,
          minLines: minLines,
          maxLength: maxLength,
          initialValue: initialValue,
          textDirection: textDirection,
          textAlign: textAlign ?? TextAlign.start,
          textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
          autofillHints: autofillHints != null ? [autofillHints!] : null,
          style: style ?? Theme.of(context).textTheme.bodyText1,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          decoration: customInputDecoration(
            filled: filled,
            fillColor: fillColor,
            context: context,
            labelText: labelText,
            hintText: hintText ?? (obscureText ? '● ● ● ● ● ● ● ●' : null),
            hintSize: hintSize,
            inputBorder: inputBorder,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            counterText: counterText,
            isDark: isDark,
            maxLines: maxLines,
          ),
        ),
      ],
    );
  }

  static InputDecoration customInputDecoration({
    required BuildContext context,
    String? hintText,
    InputBorder? inputBorder,
    Widget? suffixIcon,
    Widget? prefixIcon,
    bool? filled,
    Color? fillColor,
    String? counterText,
    String? labelText,
    bool isDark = false,
    double? hintSize,
    int maxLines = 1,
  }) {
    return InputDecoration(
      labelText: labelText,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      hintText: hintText,
      hintStyle: Theme.of(context).textTheme.caption!.copyWith(
            fontSize: hintSize ?? 16.sp,
            color: ColorsManager.hintGreyColor,
            fontWeight: FontWeight.normal,
            height: maxLines > 1 ? 1 : 0.7,
          ),
      filled: true,
      fillColor: fillColor ?? Colors.white,
      counterText: '',
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ColorsManager.primaryColor),
        borderRadius: BorderRadius.circular(12.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: ColorsManager.hintGreyColor),
        borderRadius: BorderRadius.circular(12.r),
      ),
      border: inputBorder ?? kOutlineInputBorder,
      isDense: true,
    );
  }
}
