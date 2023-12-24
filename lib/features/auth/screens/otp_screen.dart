import 'package:flutter/material.dart' as td;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/core/router/routes.dart';

import '../cubit/auth_cubit.dart';

class OtpScreen extends td.StatefulWidget {
  const OtpScreen({super.key});

  @override
  td.State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends td.State<OtpScreen> {
  late AuthCubit authCubit;
  final TextEditingController _pinCodeController = TextEditingController();

  @override
  void initState() {
    authCubit = AuthCubit.get(context);
    authCubit.initTimerDownController();
    // authCubit.sendOtpToVerifyPhone();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringsManager.phoneVerify),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return Column(
              children: [
                td.Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Directionality(
                    textDirection: td.TextDirection.ltr,
                    child: PinCodeTextField(
                      controller: _pinCodeController,
                      appContext: context,
                      length: 4,
                      keyboardType: TextInputType.number,
                      backgroundColor: ColorsManager.scaffoldBG,
                      onChanged: (value) {
                        setState(() {});
                      },
                      enablePinAutofill: true,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(8),
                        fieldHeight: 62.h,
                        fieldWidth: 64.w,
                        borderWidth: 1,
                        activeColor: ColorsManager.primaryColor,
                        inactiveColor: ColorsManager.hintGreyColor,
                        inactiveFillColor: Colors.white,
                        activeFillColor: ColorsManager.primaryColor,
                        selectedColor: ColorsManager.primaryColor,
                        selectedFillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: context.width * 0.5,
                      child: Text(
                        '${StringsManager.enterOtpCode}01011784118',
                        style: StylesManager.textStyle16BlackRegular,
                      ),
                    ),
                    DefaultButtonWidget(
                      customHeight: 40.h,
                      width: context.width * 0.25,
                      isBorder: true,
                      background: Colors.white,
                      borderColor: ColorsManager.primaryColor,
                      function: () {
                        context.pop();
                      },
                      text: StringsManager.edit,
                    )
                  ],
                ),
                50.h.ph,
                CountdownTimer(
                  controller: authCubit.controller,
                  endTime: authCubit.endTime,
                  widgetBuilder: (_, CurrentRemainingTime? time) {
                    if (time == null) {
                      //end
                      return TextButton(
                        onPressed: () {
                          // authCubit.sendOtpToVerifyPhone();
                          authCubit.initTimerDownController();
                        },
                        child: Text(
                          StringsManager.resend,
                        ),
                      );
                    }
                    return Text(
                      '${StringsManager.codeResendAfter} ${time.sec} ${StringsManager.second}',
                    );
                  },
                ),
                const Spacer(),
                DefaultButtonWidget(
                    disable: _pinCodeController.text.isEmpty,
                    function: () {
                      context.push(AppRouter.personalInfoScreen);
                    },
                    text: StringsManager.confirm),
              ],
            );
          },
        ),
      ),
    );
  }
}
