import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/features/categories/components/category_lecture_item.dart';

import '../../../core/components/label_text.dart';
import '../../../core/components/search_text_field.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/router/routes.dart';
import '../../courses/components/course_item.dart';
import '../../experts/components/top_rated_expert_item.dart';
import '../../lectures/components/lecture_item.dart';

class Category6Screen extends StatelessWidget {
  const Category6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringsManager.relieveYourShock,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.h.ph,
            LabelText(title: StringsManager.searchInApp),
            16.h.ph,
            const SearchTextField(
              isEnabled: false,
            ),
            24.h.ph,
            LabelText(title: StringsManager.topRatedExperts),
            16.h.ph,
            SizedBox(
              height: 215.h,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const TopRatedExpertItem();
                  },
                  separatorBuilder: (context, index) {
                    return 12.w.pw;
                  },
                  itemCount: 3),
            ),
            24.h.ph,
            LabelText(
                title: StringsManager.relatedCourses,
                subTitle: StringsManager.more),
            16.h.ph,
            ...List.generate(5, (index) => const CourseItem()),
            24.h.ph,
            LabelText(
                title: StringsManager.relatedLectures,
                subTitle: StringsManager.more),
            16.h.ph,
            SizedBox(
              height: 260.h,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const CategoryLectureItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                  itemCount: 2),
            ),
            10.h.ph
          ],
        ),
      ),
    );
  }
}
