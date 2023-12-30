import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/helpers/helper_methods.dart';

import '../../../core/components/text_field_with_label.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/strings_manager.dart';
import 'add_post_btm_sheet.dart';

class AddPostField extends StatelessWidget {
  const AddPostField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: ColorsManager.spotColor,
            radius: 24,
          ),
          8.w.pw,
          Expanded(
            child: DefaultTextField(
                hintText: StringsManager.doYouHaveAQuestionToAsk,
                readOnly: true,
                onTap: () {
                  showBtmSheet(
                    context: context,
                    btmSheetWidget: const AddPostBtmSheet(),
                  );
                }),
          )
        ],
      ),
    );
  }
}
