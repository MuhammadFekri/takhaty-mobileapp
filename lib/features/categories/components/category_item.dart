import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/features/categories/data/model/category_model.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/styles_manager.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.4,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
