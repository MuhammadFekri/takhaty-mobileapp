import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/components/search_text_field.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/features/categories/components/personalize_yourself_question_item.dart';

import '../../../core/resources/strings_manager.dart';

class PersonalizeYourselfScreen extends StatelessWidget {
  const PersonalizeYourselfScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.personalizeYourself),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        child: Column(
          children: [
            const SearchTextField(),
            24.h.ph,
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15.w,
                padding: EdgeInsets.zero,
                mainAxisSpacing: 16.h,
                childAspectRatio: 0.9,
                children: List.generate(6, (index) {
                  return const PersonalizeYourselfQuestionItem();
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
