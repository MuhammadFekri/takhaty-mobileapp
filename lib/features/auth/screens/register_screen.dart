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

import '../../../core/components/text_field_with_label.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
            return Column(
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
                  titleText: StringsManager.phoneNumber,
                  hintText: StringsManager.phoneNumber,
                  prefixIcon: const Icon(
                    CupertinoIcons.phone,
                  ),
                  suffixIcon: TextButton(
                      onPressed: () {}, child: Text(cubit.countryCode)),
                ),
                64.h.ph,
                DefaultButtonWidget(
                    function: () {}, text: StringsManager.continueString),
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
            );
          },
        ),
      ),
    );
  }
}
