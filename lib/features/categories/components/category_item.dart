import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/features/categories/data/model/category_model.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/styles_manager.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113.h,
      padding:
          EdgeInsets.only(left: 12.w, right: 12.w, top: 12.h, bottom: 16.h),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.05999999865889549),
          boxShadow: const [
            BoxShadow(
              color: ColorsManager.shadowColor,
              blurRadius: 12,
              offset: Offset(2, 2),
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          SvgPicture.asset(categoryModel.image),
          12.h.ph,
          Text(
            categoryModel.title,
            textAlign: TextAlign.center,
            style: StylesManager.textStyle14GreyRegular.copyWith(
                color: ColorsManager.blackColor, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
