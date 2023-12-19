import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:takhaty/core/constants/constants.dart';
import 'package:takhaty/core/resources/colors_manager.dart';

class DefaultDropDownWidget extends StatelessWidget {
  final Object? currentValue;
  final String hintText;
  final List<String> valuesText;
  final List<Object> valuesObject;
  final Function(Object?) onChanged;
  final bool isEnglish;
  final bool isRequired;

  const DefaultDropDownWidget({
    Key? key,
    required this.currentValue,
    required this.hintText,
    required this.valuesText,
    required this.valuesObject,
    required this.onChanged,
    required this.isEnglish,
    required this.isRequired,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField(
          value: currentValue,
          onChanged: onChanged,
          style: TextStyle(
              fontFamily: fontFamily,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black87),
          dropdownColor: Colors.white,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  color: ColorsManager.hintGreyColor, width: 0.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ), // Added this
          ),
          hint: Text(
            hintText,
            style: const TextStyle(
                fontFamily: fontFamily, fontWeight: FontWeight.bold),
          ),
          items: List.generate(
              valuesText.length,
              (index) => DropdownMenuItem(
                    value: valuesObject[index],
                    child: Align(
                      alignment: isEnglish
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: Text(
                        valuesText[index],
                        style: const TextStyle(fontFamily: fontFamily),
                      ),
                    ),
                  )),
          validator: (value) {
            if (value == null && isRequired) {
              return 'not_empty'.tr();
            }
            return null;
          },
        ),
      ],
    );
  }
}
