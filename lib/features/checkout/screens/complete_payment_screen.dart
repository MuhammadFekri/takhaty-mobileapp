import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

import '../../../core/components/default_button.dart';
import '../../../core/resources/strings_manager.dart';

class CompletePaymentScreen extends StatelessWidget {
  const CompletePaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.completePayment),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringsManager.checkOutDetails,
                      style: StylesManager.textStyle16GrayRegular,
                    ),
                    12.h.ph,
                    Row(
                      children: [
                        Text(
                          StringsManager.payTotalToSkip,
                          style: StylesManager.textStyle16GrayRegular,
                        ),
                        5.w.pw,
                        Text(
                          "300 ${StringsManager.currency}",
                          style: StylesManager.textStyle16GrayRegular
                              .copyWith(color: ColorsManager.primaryColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            37.h.ph,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ColorsManager.hintGreyColor)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringsManager.cardHolderName,
                    style: StylesManager.textStyle16BlackRegular,
                  ),
                  16.h.ph,
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: ColorsManager.hintGreyColor))),
                  ),
                  24.h.ph,
                  Text(
                    StringsManager.cardNumber,
                    style: StylesManager.textStyle16BlackRegular,
                  ),
                  16.h.ph,
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: ColorsManager.hintGreyColor))),
                  ),
                  24.h.ph,
                  Text(
                    StringsManager.expiryDate,
                    style: StylesManager.textStyle16BlackRegular,
                  ),
                  16.h.ph,
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: ColorsManager.hintGreyColor))),
                  ),
                  24.h.ph,
                  Text(
                    StringsManager.cvv,
                    style: StylesManager.textStyle16BlackRegular,
                  ),
                  16.h.ph,
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: ColorsManager.hintGreyColor))),
                  ),
                  24.h.ph,
                ],
              ),
            ),
            40.h.ph,
            DefaultButtonWidget(function: () {}, text: StringsManager.payNow),
            16.h.ph,
          ],
        ),
      ),
    );
  }
}
