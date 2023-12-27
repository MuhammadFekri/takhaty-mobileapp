import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

import '../../search/components/custom_filter_chip_widget.dart';
import '../components/expert_details_item.dart';
import '../components/session_details_item.dart';

class SessionDetailsScreen extends StatelessWidget {
  const SessionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.sessionDetails),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorsManager.primaryColor,
        onPressed: () {},
        child: SvgPicture.asset(ImagesManager.chat),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SessionDetailsItem(),
            24.h.ph,
            Row(
              children: [
                Text(
                  StringsManager.expertDetails,
                  style: StylesManager.textStyle16BlackRegular,
                ),
              ],
            ),
            16.h.ph,
            const ExpertDetailsItem(),
            24.h.ph,
            Row(
              children: [
                Text(
                  StringsManager.conditionsYouAreSufferingFrom,
                  style: StylesManager.textStyle16BlackRegular,
                ),
              ],
            ),
            12.h.ph,
            Wrap(
              runSpacing: 16.h,
              spacing: 10.w,
              children: List.generate(
                  3,
                  (index) => const CustomFilterChip(
                        title: 'إضطرابات نفسية',
                      )),
            )
          ],
        ),
      ),
    );
  }
}
