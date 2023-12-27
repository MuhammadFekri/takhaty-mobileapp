import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/components/label_text.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/router/routes.dart';

import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';
import '../../../core/resources/strings_manager.dart';
import '../../../core/resources/styles_manager.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.reserveDetails),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.h.ph,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsManager.primaryColor),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/50x50"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(4.5.h),
                          decoration: const BoxDecoration(
                              color: ColorsManager.primaryColor,
                              shape: BoxShape.circle),
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(ImagesManager.recommended),
                        )
                      ],
                    ),
                    12.w.pw,
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "د.رضوى محمد",
                                  style: StylesManager.textStyle18WhiteLight
                                      .copyWith(
                                          color: ColorsManager.blackColor,
                                          fontWeight: FontWeight.w400),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.w, vertical: 8.h),
                                decoration: BoxDecoration(
                                  color: ColorsManager.primaryLightColor,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  "أخصائى نفسي",
                                  style: StylesManager.textStyle12BlackRegular
                                      .copyWith(
                                          color: ColorsManager.primaryColor,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          12.h.ph,
                          Text(
                            "أخصائى مساعد حاصلة على درجة الماجيستير فى علم النفس جامعة القاهرة",
                            style:
                                StylesManager.textStyle14GreyRegular.copyWith(
                              color: ColorsManager.grey2Color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              24.h.ph,
              Container(
                decoration: BoxDecoration(
                    color: ColorsManager.grey5Color,
                    borderRadius: BorderRadius.circular(12.r)),
                padding: EdgeInsets.all(16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringsManager.appointmentDetails,
                      style: StylesManager.textStyle14GreyRegular
                          .copyWith(color: ColorsManager.grey2Color),
                    ),
                    20.h.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(ImagesManager.recentPatient),
                            8.w.pw,
                            Text(
                              "جلسة أسرية",
                              style: StylesManager.textStyle14GreyRegular
                                  .copyWith(color: ColorsManager.blackColor),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(ImagesManager.appointmentTime),
                            8.w.pw,
                            Text(
                              "01:45 م",
                              style: StylesManager.textStyle14GreyRegular
                                  .copyWith(color: ColorsManager.blackColor),
                            )
                          ],
                        ),
                        10.w.pw,
                      ],
                    ),
                    20.h.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(ImagesManager.appointmentCalender),
                            8.w.pw,
                            Text(
                              "20 نوفمبر",
                              style: StylesManager.textStyle14GreyRegular
                                  .copyWith(color: ColorsManager.blackColor),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(ImagesManager.period),
                            8.w.pw,
                            Text(
                              "45 دقيقة",
                              style: StylesManager.textStyle14GreyRegular
                                  .copyWith(color: ColorsManager.blackColor),
                            )
                          ],
                        ),
                        5.w.pw,
                      ],
                    ),
                  ],
                ),
              ),
              24.h.ph,
              LabelText(title: StringsManager.discountCoupon),
              16.h.ph,
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: ColorsManager.hintGreyColor)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: StringsManager.enterCouponCode),
                      ),
                    ),
                    DefaultButtonWidget(
                      width: 81.w,
                      function: () {},
                      text: StringsManager.apply,
                      disable: true,
                    )
                  ],
                ),
              ),
              16.h.ph,
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        StringsManager.checkOutDetails,
                        style: StylesManager.textStyle14GreyRegular
                            .copyWith(color: ColorsManager.grey2Color),
                      ),
                      24.h.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.cost,
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                          Text(
                            "300 ${StringsManager.currency}",
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                        ],
                      ),
                      24.h.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.tax,
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                          Text(
                            "300 ${StringsManager.currency}",
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                        ],
                      ),
                      24.h.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.discount,
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                          Text(
                            "300 ${StringsManager.currency}",
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                        ],
                      ),
                      24.h.ph,
                      const Divider(),
                      24.h.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            StringsManager.total,
                            style: StylesManager.textStyle14BlackRegular,
                          ),
                          Text(
                            "300 ${StringsManager.currency}",
                            style: StylesManager.textStyle18WhiteLight.copyWith(
                                color: ColorsManager.primaryColor,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              16.h.ph,
              Center(
                child: Text(
                  StringsManager.youCanPayWith,
                  style: StylesManager.textStyle14GreyRegular,
                ),
              ),
              27.h.ph,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(ImagesManager.wallet),
                    SvgPicture.asset(ImagesManager.amazonPay),
                    SvgPicture.asset(ImagesManager.visa),
                    SvgPicture.asset(ImagesManager.mastercard),
                  ],
                ),
              ),
              24.h.ph,
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringsManager.payWithWallet,
                        style: StylesManager.textStyle16GrayRegular,
                      ),
                      Switch.adaptive(
                        value: false,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                ),
              ),
              32.h.ph,
              DefaultButtonWidget(
                  function: () {
                    context.push(AppRouter.completePaymentScreen);
                  },
                  text: StringsManager.payNow),
              16.h.ph,
              Center(
                child: SizedBox(
                  width: 311,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'بالضغط على متابعة فإنك توافق على',
                          style: StylesManager.textStyle14BlackRegular,
                        ),
                        TextSpan(
                          text: 'الشروط والأحكام وسياسة الخصوصية',
                          style: StylesManager.textStyle14PrimaryBold,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              10.h.ph,
            ],
          ),
        ),
      ),
    );
  }
}
