import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/features/auth/cubit/auth_cubit.dart';

import '../../../core/components/text_field_with_label.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _currentPassController = TextEditingController();
  final _newPassController = TextEditingController();
  final _confirmPassController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _currentPassController.dispose();
    _newPassController.dispose();
    _confirmPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          StringsManager.changePassword,
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
                  FilledTextFieldWithLabel(
                    controller: _currentPassController,
                    keyboardType: TextInputType.text,
                    titleText: StringsManager.currentPassword,
                    obscureText: true,
                    inputAction: TextInputAction.next,
                    onChange: (value) {
                      setState(() {});
                    },
                  ),
                  24.h.ph,
                  FilledTextFieldWithLabel(
                    controller: _newPassController,
                    keyboardType: TextInputType.text,
                    titleText: StringsManager.newPassword,
                    obscureText: true,
                    inputAction: TextInputAction.next,
                    onChange: (value) {
                      setState(() {});
                    },
                  ),
                  24.h.ph,
                  FilledTextFieldWithLabel(
                    controller: _confirmPassController,
                    keyboardType: TextInputType.text,
                    titleText: StringsManager.confirmNewPassword,
                    obscureText: true,
                    inputAction: TextInputAction.done,
                    onChange: (value) {
                      setState(() {});
                    },
                  ),
                  24.h.ph,
                  64.h.ph,
                  DefaultButtonWidget(
                      function: () {}, text: StringsManager.saveChanges),
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
