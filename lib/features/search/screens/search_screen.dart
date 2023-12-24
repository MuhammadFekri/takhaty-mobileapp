import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:date_picker_timeline/extra/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/components/search_text_field.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/core/router/routes.dart';
import 'package:takhaty/features/search/components/search_choice_widget.dart';
import 'package:takhaty/features/search/components/sort_sheet.dart';

import '../components/expert_search_item.dart';
import '../components/sort_sheet.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchTextField(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            16.h.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SearchChoiceWidget(
                  title: StringsManager.filterResults,
                  icon: ImagesManager.filter,
                  onTap: () {
                    context.push(AppRouter.firstFilterScreen);
                  },
                ),
                16.w.pw,
                SearchChoiceWidget(
                  title: StringsManager.sortResults,
                  icon: ImagesManager.sort,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const SortSheet();
                      },
                    );
                  },
                ),
              ],
            ),
            16.h.ph,
            DatePicker(
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: ColorsManager.primaryColor,
              height: 82.h,
              width: 60.w,
              deactivatedColor: ColorsManager.grey4Color,
              dayTextStyle: defaultDayTextStyle.copyWith(
                  color: ColorsManager.secondary2, fontSize: 10.sp),
              dateTextStyle: StylesManager.textStyle16BlackRegular.copyWith(
                  color: ColorsManager.secondary2, fontWeight: FontWeight.bold),
              selectedTextColor: Colors.white,
              locale: "ar",
              onDateChange: (date) {
                // New date selected
                // setState(() {
                //   _selectedValue = date;
                // });
              },
            ),
            16.h.ph,
            Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const ExpertSearchItem();
                  },
                  separatorBuilder: (context, index) {
                    return 16.h.ph;
                  },
                  itemCount: 3),
            )
          ],
        ),
      ),
    );
  }
}
