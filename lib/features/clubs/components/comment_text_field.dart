import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';

import '../../../core/components/text_field_with_label.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/strings_manager.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: ColorsManager.spotColor,
            radius: 24,
          ),
          8.w.pw,
          Expanded(
            child: DefaultTextField(
              hintText: StringsManager.addComment,
              maxLines: 4,
              // minLines: 1,
              inputAction: TextInputAction.newline,
              keyboardType: TextInputType.multiline,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.send,
                  color: ColorsManager.primaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
