import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/features/notification/components/notification_item.dart';

import '../../../core/resources/strings_manager.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.notification),
      ),
      body: Column(
        children: [
          16.h.ph,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "اليوم",
                  style: StylesManager.textStyle16GrayRegular
                      .copyWith(color: ColorsManager.primaryColor),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    StringsManager.markAllAsRead,
                    style: StylesManager.textStyle12BlackRegular,
                  ),
                )
              ],
            ),
          ),
          24.h.ph,
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemBuilder: (context, index) {
                  return const NotificationItem();
                },
                separatorBuilder: (context, index) {
                  return 24.h.ph;
                },
                itemCount: 5),
          )
        ],
      ),
    );
  }
}
