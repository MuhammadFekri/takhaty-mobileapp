import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/components/label_text.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/router/routes.dart';
import 'package:takhaty/features/search/components/custom_filter_chip_widget.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class AddAppointmentScreen extends StatelessWidget {
  const AddAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.reserveNewAppointment),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelText(
                      title: StringsManager.appointmentTimeTaken,
                    ),
                    16.h.ph,
                    ...List.generate(3, (index) {
                      return Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                            horizontal: 32.w, vertical: 15.h),
                        margin: EdgeInsets.only(bottom: 10.h),
                        decoration: BoxDecoration(
                            color: ColorsManager.grey4Color,
                            borderRadius: BorderRadius.circular(12.r)),
                        child: Text(
                          "30 دقيقة",
                          style: StylesManager.textStyle16BlackRegular.copyWith(
                              fontWeight: FontWeight.normal,
                              color: ColorsManager.grey2Color),
                        ),
                      );
                    }),
                    24.h.ph,
                    LabelText(
                      title: StringsManager.appointmentDate,
                    ),
                    DatePickerDialog(
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2050)),
                    LabelText(
                      title: StringsManager.appointmentTime,
                    ),
                    16.h.ph,
                    Wrap(
                      spacing: 16.w,
                      runSpacing: 10.h,
                      runAlignment: WrapAlignment.spaceBetween,
                      children: List.generate(4,
                          (index) => const CustomFilterChip(title: "12:15 PM")),
                    )
                  ],
                ),
              ),
            ),
            10.h.ph,
            DefaultButtonWidget(
                function: () {
                  context.push(AppRouter.checkOutScreen);
                },
                text: StringsManager.continueString),
            10.h.ph
          ],
        ),
      ),
    );
  }
}
