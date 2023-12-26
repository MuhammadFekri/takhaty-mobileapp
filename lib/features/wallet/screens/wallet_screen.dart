import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

import '../../../core/components/default_button.dart';
import '../../../core/resources/images_manager.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.wallet),
        actions: [],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          StringsManager.totalBalance,
                          style: StylesManager.textStyle18PrimaryBold,
                        ),
                        16.h.ph,
                        Text(
                          "0.0 ${StringsManager.currency}",
                          style: StylesManager.textStyle36BlackRegular,
                        ),
                      ],
                    ),
                    DefaultButtonWidget(
                      text: StringsManager.addBalance,
                      radius: 8,
                      width: context.width * 0.35,
                      function: () {},
                    ),
                  ],
                ),
                24.h.ph,
                if (true /*TODO if transactionsEmpty*/) ...[
                  SvgPicture.asset(
                    ImagesManager.walletVector,
                    height: 200.h,
                    width: 200.w,
                  ),
                  16.h.ph,
                  Text(
                    StringsManager.noTransactionsYet,
                    style: StylesManager.textStyle18BlackRegular,
                  ),
                  50.h.ph,
                ],
                Row(
                  children: [
                    Text(
                      StringsManager.lastTransactions,
                      style: StylesManager.textStyle16BlackRegular,
                    ),
                  ],
                ),
                16.h.ph,
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: ColorsManager.primaryColor,
                      child: SvgPicture.asset(
                        ImagesManager.heartBroken,
                        height: 20.h,
                        width: 20.w,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "جلسة نفسية",
                      style: StylesManager.textStyle14BlackRegular,
                    ),
                    subtitle: Text(
                      "2021-09-09 12:00",
                      style: StylesManager.textStyle12GrayRegular,
                    ),
                    trailing: Text(
                      "500 ${StringsManager.currency}",
                      style: StylesManager.textStyle14PrimaryBold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
