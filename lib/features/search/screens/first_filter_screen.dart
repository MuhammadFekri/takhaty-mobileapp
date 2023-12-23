import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/core/router/routes.dart';

import '../components/custom_filter_chip_widget.dart';
import '../components/filter_label_widget.dart';

class FirstFilterScreen extends StatelessWidget {
  const FirstFilterScreen({super.key});

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
                      icon: ImagesManager.session,
                      title: StringsManager.sessionType,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          3,
                          (index) => const CustomFilterChip(
                                title: 'نفسية',
                              )),
                    ),
                    16.h.ph,
                    FilterLabelWidget(
                      icon: ImagesManager.health,
                      title: StringsManager.conditionYouAreLookingFor,
                    ),
                    Wrap(
                      runSpacing: 16.h,
                      spacing: 10.w,
                      children: List.generate(
                          10,
                          (index) => const CustomFilterChip(
                                title: 'الإدمان',
                              )),
                    )
                  ],
                ),
              ),
            ),
            DefaultButtonWidget(
                function: () {
                  context.push(AppRouter.secondFilterScreen);
                },
                text: StringsManager.next),
            32.h.ph
          ],
        ),
      ),
    );
  }
}
