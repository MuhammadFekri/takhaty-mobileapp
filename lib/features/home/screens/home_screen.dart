import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/features/categories/components/category_item.dart';
import 'package:takhaty/features/home/components/book_consultant_item.dart';
import 'package:takhaty/features/home/components/most_frequent_consultant_item.dart';

import '../../../core/components/label_text.dart';
import '../../../core/components/search_text_field.dart';
import '../../categories/data/categories_data.dart';
import '../../experts/components/top_rated_expert_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.h.ph,
              Row(
                children: [
                  SizedBox(
                      width: 28.w,
                      height: 28.h,
                      child: SvgPicture.asset(ImagesManager.logo)),
                  12.w.pw,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: StringsManager.welcome,
                              style: StylesManager.textStyle16BlackRegular,
                              children: [
                                TextSpan(
                                    text: " أمانى",
                                    style: StylesManager.textStyle16BlackRegular
                                        .copyWith(
                                            color: ColorsManager.primaryColor,
                                            fontWeight: FontWeight.bold))
                              ]),
                        ),
                        8.h.ph,
                        Text(
                          StringsManager.wishHappyDay,
                          style: StylesManager.textStyle14GreyRegular,
                        )
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SvgPicture.asset(ImagesManager.messagesIcon),
                      Container(
                        width: 13.w,
                        height: 13.h,
                        decoration: const BoxDecoration(
                            color: ColorsManager.primaryColor,
                            shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            "3",
                            style: StylesManager.textStyle12BlackRegular
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  20.w.pw,
                  SvgPicture.asset(ImagesManager.notificationsIcon),
                ],
              ),
              34.h.ph,
              GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 5.w,
                mainAxisSpacing: 5.h,
                childAspectRatio: 0.8,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children:
                    List.generate(CategoriesData.categories.length, (index) {
                  return CategoryItem(
                      categoryModel: CategoriesData.categories[index]);
                }),
              ),
              24.h.ph,
              LabelText(title: StringsManager.searchInApp),
              16.h.ph,
              const SearchTextField(),
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
              LabelText(title: StringsManager.bookConsultationNow),
              16.h.ph,
              SizedBox(
                height: 140.h,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const BookConsultantItem();
                    },
                    separatorBuilder: (context, index) {
                      return 16.w.pw;
                    },
                    itemCount: 2),
              ),
              16.h.ph,
              LabelText(title: StringsManager.mostFrequentConsultations),
              16.h.ph,
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const MostFrequentConsultantItem();
                  },
                  separatorBuilder: (context, index) {
                    return 16.h.ph;
                  },
                  itemCount: 8),
            ],
          ),
        ),
      ),
    );
  }
}
