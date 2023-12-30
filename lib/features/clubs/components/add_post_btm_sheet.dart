import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

class AddPostBtmSheet extends StatelessWidget {
  const AddPostBtmSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const BackButton(
                      color: ColorsManager.primaryColor,
                    ),
                    16.w.pw,
                    Text(
                      StringsManager.writePost,
                      style: StylesManager.textStyle16BlackSemiBold,
                    ),
                  ],
                ),
                DefaultButtonWidget(
                  function: () {},
                  text: StringsManager.postNow,
                  customHeight: 36.h,
                  width: 100.w,
                )
              ],
            ),
            4.h.ph,
            TextFormField(
              maxLines: 6,
              maxLength: 5000,
              decoration: InputDecoration(
                hintText: StringsManager.doYouHaveAQuestionToAsk,
                hintStyle: StylesManager.textStyle14GrayRegular,
                border: const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
