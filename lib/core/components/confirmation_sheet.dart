import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

import 'default_button.dart';

class ConfirmationSheet extends StatelessWidget {
  const ConfirmationSheet(
      {Key? key, required this.text, required this.onConfirm})
      : super(key: key);
  final String text;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CloseButton(),
              ],
            ),
            //confirm logout text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                text,
                style: StylesManager.textStyle18BlackSemiBold,
                textAlign: TextAlign.center,
              ),
            ),
            32.h.ph,
            Row(
              children: [
                Expanded(
                    child: DefaultButtonWidget(
                  text: StringsManager.signOut,
                  function: onConfirm,
                  background: ColorsManager.redColor,
                )),
                15.w.pw,
                Expanded(
                    child: DefaultButtonWidget(
                  text: StringsManager.cancel,
                  function: () => context.pop(),
                  background: ColorsManager.greyColor,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
