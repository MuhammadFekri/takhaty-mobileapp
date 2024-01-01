import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';

import '../../../core/components/custom_rounded_back_button.dart';
import '../../../core/resources/styles_manager.dart';
import '../components/course_item.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

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
                  "منصة الدعم النفسي",
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
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  itemBuilder: (context, index) {
                    return const CourseItem();
                  },
                  separatorBuilder: (context, index) {
                    return 16.h.ph;
                  },
                  itemCount: 5),
            )
          ],
        ),
      ),
    );
  }
}
