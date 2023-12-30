import 'package:flutter/material.dart';
import 'package:takhaty/core/resources/colors_manager.dart';

import '../resources/styles_manager.dart';

class LabelText extends StatelessWidget {
  final String title;
  final String? subTitle;
  final void Function()? subTitleOnTap;
  const LabelText({
    super.key,
    required this.title,
    this.subTitle,
    this.subTitleOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: StylesManager.textStyle16BlackRegular,
        ),
        if (subTitle != null)
          GestureDetector(
            onTap: subTitleOnTap,
            child: Text(
              subTitle!,
              style: StylesManager.textStyle14GrayRegular
                  .copyWith(color: ColorsManager.secondary2),
            ),
          ),
      ],
    );
  }
}
