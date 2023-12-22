import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/features/auth/cubit/auth_cubit.dart';
import 'package:takhaty/features/auth/sheets/verification_method_btm_sheet.dart';

import '../../../core/components/text_field_with_label.dart';
import '../../../core/helpers/helper_methods.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringsManager.enterPhone,
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
                  Text(
                    StringsManager.country,
                    style: StylesManager.textStyle16BlackRegular,
                  ),
                  16.h.ph,
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: ColorsManager.hintGreyColor)),
                    child: CountryCodePicker(
                      showDropDownButton: true,
                      alignLeft: true,
                      initialSelection: 'eg',
                      favorite: const ['+20', '+966'],
                      showFlagDialog: true,
                      padding: EdgeInsets.zero,
                      showCountryOnly: true,
                      showOnlyCountryWhenClosed: true,
                      flagDecoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(2)),
                      onChanged: (value) => cubit.onChangeCountry(
                          countryCode: value.dialCode.toString()),
                    ),
                  ),
                  32.h.ph,
                  FilledTextFieldWithLabel(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    titleText: StringsManager.phoneNumber,
                    hintText: StringsManager.phoneNumber,
                    inputAction: TextInputAction.done,
                    onChange: (value) {
                      setState(() {});
                    },
                    prefixIcon: const Icon(
                      CupertinoIcons.phone,
                    ),
                    suffixIcon: TextButton(
                        onPressed: () {}, child: Text(cubit.countryCode)),
                  ),
                  64.h.ph,
                  DefaultButtonWidget(
                      disable: _phoneController.text.isEmpty,
                      function: () {
                        showBtmSheet(
                          context: context,
                          btmSheetWidget: const VerificationMethodBtmSheet(),
                        );
                      },
                      text: StringsManager.continueString),
                  16.h.ph,
                  Center(
                    child: SizedBox(
                      width: 311,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'بالضغط على متابعة فإنك توافق على',
                              style: StylesManager.textStyle14BlackRegular,
                            ),
                            TextSpan(
                              text: 'الشروط والأحكام وسياسة الخصوصية',
                              style: StylesManager.textStyle14PrimaryBold,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
