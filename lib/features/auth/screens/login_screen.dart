import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/core/router/routes.dart';
import 'package:takhaty/features/auth/cubit/auth_cubit.dart';

import '../../../core/components/text_field_with_label.dart';
import '../../../core/resources/colors_manager.dart';
import '../../../core/resources/images_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool acceptMail = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringsManager.login,
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
                children: [
                  SvgPicture.asset(ImagesManager.loginVector, height: 180.h),
                  32.h.ph,
                  Text(
                    StringsManager.loginNow,
                    style: StylesManager.textStyle18BlackSemiBold
                        .copyWith(fontSize: 20),
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
                  DefaultTextField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !cubit.showPassword,
                    titleText: StringsManager.password,
                    inputAction: TextInputAction.done,
                    suffixIcon: IconButton(
                      icon: Icon(cubit.showPasswordIcon),
                      onPressed: () {
                        cubit.changePasswordVisibility();
                      },
                    ),
                    onChange: (value) {
                      setState(() {});
                    },
                  ),
                  64.h.ph,
                  DefaultButtonWidget(
                      disable: _passwordController.text.isEmpty ||
                          _emailController.text.isEmpty,
                      function: () {
                        context.pushAndRemoveUntil(
                            AppRouter.userBottomNavigationScreen);
                      },
                      text: StringsManager.login),
                  24.h.ph,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        StringsManager.dontHaveAccount,
                        style: StylesManager.textStyle14BlackRegular
                            .copyWith(color: ColorsManager.grey2Color),
                      ),
                      TextButton(
                          onPressed: () {
                            context.push(AppRouter.registerScreen);
                          },
                          child: Text(
                            StringsManager.registerNow,
                            style: StylesManager.textStyle14BlackRegular
                                .copyWith(color: ColorsManager.primaryColor),
                          )),
                    ],
                  ),
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
