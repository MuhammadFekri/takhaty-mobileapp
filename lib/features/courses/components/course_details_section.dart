import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../experts/components/expert_data_item.dart';

class CourseDetailsSection extends StatelessWidget {
  const CourseDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: ColorsManager.grey5Color),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExpertDataItem(
                  icon: ImagesManager.health,
                  label: "${StringsManager.host}:",
                  data: "د.رضوى محمد",
                ),
                16.h.ph,
                ExpertDataItem(
                  icon: ImagesManager.presentation,
                  label: StringsManager.presentation,
                  data: "صوت/فيديو",
                ),
                16.h.ph,
                ExpertDataItem(
                  icon: ImagesManager.level,
                  label: StringsManager.trainingLevels,
                  data: "3 ${StringsManager.levels}",
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpertDataItem(
                icon: ImagesManager.time,
                label: StringsManager.trainingPeriod,
                data: "4 ${StringsManager.hours}",
              ),
              16.h.ph,
              ExpertDataItem(
                icon: ImagesManager.appointmentCalender,
                label: StringsManager.dateAndTime,
                data: "4:00 pm - 22/12/2023",
              ),
              16.h.ph,
              ExpertDataItem(
                icon: ImagesManager.trainingClass,
                label: StringsManager.lectures,
                data: "7 ${StringsManager.lecture}",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
