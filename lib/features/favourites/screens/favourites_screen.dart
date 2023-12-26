import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/features/favourites/components/expert_fav_item.dart';

import '../components/club_fav_item.dart';
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
                    itemBuilder: (context, index) => const ClubFavIcon(),
                    separatorBuilder: (context, index) => 16.h.ph,
                    itemCount: 5),
              ]))
            ],
          )),
    );
  }
}
