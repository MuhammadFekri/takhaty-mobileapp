import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/core/router/routes.dart';
import 'package:takhaty/features/auth/cubit/auth_cubit.dart';

import '../../../core/components/text_field_with_label.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  bool acceptMail = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringsManager.personalInfo,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            final cubit = AuthCubit.get(context);
            return Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextField(
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    titleText: StringsManager.name,
                    hintText: StringsManager.enterName,
                    inputAction: TextInputAction.next,
                    onChange: (value) {
                      setState(() {});
                    },
                  ),
                  24.h.ph,
                  DefaultTextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    titleText: StringsManager.email,
                    hintText: StringsManager.enterEmail,
                    inputAction: TextInputAction.done,
                    onChange: (value) {
                      setState(() {});
                    },
                  ),
                  24.h.ph,
                  Row(
                    children: [
                      Checkbox(
                        value: acceptMail,
                        onChanged: (value) {
                          setState(() {
                            acceptMail = value!;
                          });
                        },
                      ),
                      Text(
                        StringsManager.acceptReceiveMail,
                        style: StylesManager.textStyle14BlackRegular
                            .copyWith(color: ColorsManager.grey2Color),
                      ),
                    ],
                  ),
                  64.h.ph,
                  DefaultButtonWidget(
                      disable: _nameController.text.isEmpty ||
                          _emailController.text.isEmpty,
                      function: () {
                        context.pushAndRemoveUntil(
                            AppRouter.userBottomNavigationScreen);
                      },
                      text: StringsManager.saveAndContinue),
                  16.h.ph,
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
