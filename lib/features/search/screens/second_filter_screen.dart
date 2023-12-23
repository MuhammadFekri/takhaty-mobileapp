import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/router/routes.dart';
import '../components/custom_filter_chip_widget.dart';
import '../components/filter_label_widget.dart';

class SecondFilterScreen extends StatelessWidget {
  const SecondFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.filterResults),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FilterLabelWidget(
                      icon: ImagesManager.filterPrice,
                      title: StringsManager.yourBudgetForAnHourlySession,
                    ),
                    Wrap(
                      runSpacing: 16.h,
                      spacing: 10.w,
                      alignment: WrapAlignment.spaceBetween,
                      children: List.generate(
                          4,
                          (index) => const CustomFilterChip(
                                title: '100 ج إلى 150ج',
                              )),
                    ),
                    8.h.ph,
                    FilterLabelWidget(
                      icon: ImagesManager.language,
                      title: StringsManager.expertLanguage,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          3,
                          (index) => const CustomFilterChip(
                                title: 'نفسية',
                              )),
                    ),
                    8.h.ph,
                    FilterLabelWidget(
                      icon: ImagesManager.gender,
                      title: StringsManager.expertGender,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          3,
                          (index) => const CustomFilterChip(
                                title: 'نفسية',
                              )),
                    ),
                    12.h.ph,
                    FilterLabelWidget(
                      icon: ImagesManager.health,
                      title: StringsManager.expertType,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          3,
                          (index) => const CustomFilterChip(
                                title: 'نفسية',
                              )),
                    ),
                  ],
                ),
              ),
            ),
            DefaultButtonWidget(
                function: () {
                  context.push(AppRouter.searchScreen);
                },
                text: StringsManager.apply),
            32.h.ph
          ],
        ),
      ),
    );
  }
}
