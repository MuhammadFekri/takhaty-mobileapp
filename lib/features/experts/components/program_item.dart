import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class ProgramItem extends StatelessWidget {
  const ProgramItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.w,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 94.h,
                width: 164.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/164x94"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              12.h.ph,
              Text(
                "التعافى من الإدمان",
                style: StylesManager.textStyle14GrayRegular
                    .copyWith(color: ColorsManager.blackColor),
              ),
              6.h.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(ImagesManager.level),
                      4.w.pw,
                      Text(
                        "5 ${StringsManager.levels}",
                        style: StylesManager.textStyle12BlackRegular
                            .copyWith(color: ColorsManager.grey2Color),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(ImagesManager.session),
                      4.w.pw,
                      Text(
                        "5 ${StringsManager.sessions}",
                        style: StylesManager.textStyle12BlackRegular
                            .copyWith(color: ColorsManager.grey2Color),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
