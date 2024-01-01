import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/features/categories/components/category_lecture_item.dart';

import '../../../core/components/custom_rounded_back_button.dart';
import '../../../core/resources/styles_manager.dart';
import '../components/lecture_item.dart';

class LecturesScreen extends StatelessWidget {
  const LecturesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const CustomRoundedBackButton(),
                Text(
                  StringsManager.lecturers,
                  style: StylesManager.textStyle16BlackSemiBold
                      .copyWith(fontWeight: FontWeight.normal),
                )
              ],
            ),
            24.h.ph,
            SizedBox(
              height: 50.h,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 17.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: ColorsManager.grey7Color),
                      child: Center(
                          child: Text(
                        StringsManager.all,
                        style: StylesManager.textStyle14GrayRegular
                            .copyWith(fontWeight: FontWeight.normal),
                      )),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return 8.w.pw;
                  },
                  itemCount: 5),
            ),
            16.h.ph,
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                mainAxisSpacing: 16.h,
                childAspectRatio: 0.6,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                children: List.generate(8, (index) {
                  return const LectureItem();
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
