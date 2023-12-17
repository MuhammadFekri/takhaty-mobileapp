import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(ImagesManager.logo),
                12.pw,
                Text(StringsManager.welcome,
                    style: StylesManager.textStyle16BlackRegular)
              ],
            )
          ],
        ),
      )),
    );
  }
}
