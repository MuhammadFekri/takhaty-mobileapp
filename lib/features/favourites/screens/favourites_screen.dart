import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/features/favourites/components/expert_fav_item.dart';

import '../../../core/resources/colors_manager.dart';
import '../components/course_fav_item.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.favourites),
      ),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
                Tab(
                  text: StringsManager.experts,
                ),
                Tab(
                  text: StringsManager.courses2,
                ),
                Tab(
                  text: StringsManager.clubs,
                ),
              ]),
              Expanded(
                  child: TabBarView(children: [
                ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (context, index) => const ExpertFavItem(),
                    separatorBuilder: (context, index) => 16.h.ph,
                    itemCount: 5),
                ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (context, index) => const CourseFavIcon(),
                    separatorBuilder: (context, index) => 16.h.ph,
                    itemCount: 5),
                ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (context, index) => Container(
                          height: 128,
                          padding: EdgeInsets.symmetric(
                              vertical: 12.h, horizontal: 16.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              border:
                                  Border.all(color: ColorsManager.secondary2)),
                        ),
                    separatorBuilder: (context, index) => 16.h.ph,
                    itemCount: 5),
              ]))
            ],
          )),
    );
  }
}
