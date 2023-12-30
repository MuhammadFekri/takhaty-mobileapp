import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

import '../../../core/resources/strings_manager.dart';
import '../components/add_post_field.dart';
import '../components/club_post_item.dart';

class ClubDetailsScreen extends StatelessWidget {
  const ClubDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.32,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SvgPicture.asset(
                        "assets/images/club_for_people.svg",
                        width: double.maxFinite,
                        // height: MediaQuery.of(context).size.height * 0.25,
                      ),
                    ),
                    5.h.ph,
                    Text(
                      "نادى أصحاب الهمم",
                      style: StylesManager.textStyle18BlackSemiBold,
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '1200 ',
                                style: StylesManager.textStyle14GrayRegular,
                              ),
                              TextSpan(
                                text: StringsManager.follower,
                                style: StylesManager.textStyle14GrayRegular,
                              ),
                            ],
                          ),
                        ),
                        8.w.pw,
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '200 ',
                                style: StylesManager.textStyle14GrayRegular,
                              ),
                              TextSpan(
                                text: StringsManager.post,
                                style: StylesManager.textStyle14GrayRegular,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: AddPostField(),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16),
            sliver: SliverList.separated(
                itemCount: 3,
                separatorBuilder: (context, index) => 24.h.ph,
                itemBuilder: (context, index) => const ClubPostItem()),
          ),
        ],
      ),
    );
  }
}
