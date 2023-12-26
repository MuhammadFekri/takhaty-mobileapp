import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

import '../../../core/components/default_button.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.help),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              40.h.ph,
              SvgPicture.asset(
                ImagesManager.helpVector,
                height: 200.h,
                width: 200.w,
              ),
              24.h.ph,
              Text(
                StringsManager.helpTeamReadyToAnswer,
                style: StylesManager.textStyle16BlackRegular,
              ),
              24.h.ph,
              DefaultButtonWidget(
                text: StringsManager.contactUs,
                radius: 8,
                width: context.width * 0.35,
                function: () {},
              ),
              50.h.ph,
              Row(
                children: [
                  Text(
                    StringsManager.faqs,
                    style: StylesManager.textStyle16BlackSemiBold,
                  ),
                ],
              ),
              8.h.ph,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const ExpansionTile(
                    title: Text(
                      'طريقة حجز جلسة مع مختص',
                      // style: StylesManager.textStyle14BlackRegular,
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Takhaty is a platform that provides online mental health services, where you can book an',
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
