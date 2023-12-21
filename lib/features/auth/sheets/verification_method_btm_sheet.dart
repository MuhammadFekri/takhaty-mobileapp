import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:takhaty/core/components/default_button.dart';
import 'package:takhaty/core/extensions/extensions_helper.dart';
import 'package:takhaty/core/resources/colors_manager.dart';
import 'package:takhaty/core/resources/images_manager.dart';
import 'package:takhaty/core/resources/strings_manager.dart';
import 'package:takhaty/core/resources/styles_manager.dart';
import 'package:takhaty/features/auth/cubit/auth_cubit.dart';

class VerificationMethodBtmSheet extends StatefulWidget {
  const VerificationMethodBtmSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<VerificationMethodBtmSheet> createState() =>
      _VerificationMethodBtmSheetState();
}

class _VerificationMethodBtmSheetState
    extends State<VerificationMethodBtmSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  StringsManager.selectVerifyMethod,
                  style: StylesManager.textStyle16BlackRegular,
                ),
                const CloseButton()
              ],
            ),
            44.h.ph,
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                final cubit = AuthCubit.get(context);
                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    VerificationMethodTile(
                      iconPath: ImagesManager.message,
                      name: StringsManager.bySms,
                      isSelected:
                          cubit.verificationMethod == VerificationMethod.sms,
                      onTap: () {
                        cubit.selectVerificationMethod(
                            method: VerificationMethod.sms);
                      },
                    ),
                    24.h.ph,
                    VerificationMethodTile(
                      iconPath: ImagesManager.whatsapp,
                      name: StringsManager.byWhatsapp,
                      isSelected: cubit.verificationMethod ==
                          VerificationMethod.whatsapp,
                      onTap: () {
                        cubit.selectVerificationMethod(
                            method: VerificationMethod.whatsapp);
                      },
                    ),
                    40.h.ph,
                    DefaultButtonWidget(
                      function: () {},
                      text: StringsManager.continueString,
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class VerificationMethodTile extends StatelessWidget {
  const VerificationMethodTile({
    super.key,
    required this.iconPath,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  final String iconPath;
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: isSelected
              ? ColorsManager.primaryColor.withOpacity(0.1)
              : Colors.transparent,
          border: Border.all(
              color: isSelected
                  ? ColorsManager.primaryColor
                  : ColorsManager.primaryBorderColor,
              width: isSelected ? 1.5 : 1)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: ListTile(
          leading: SvgPicture.asset(iconPath),
          title: Text(name,
              style: StylesManager.textStyle16BlackRegular
                  .copyWith(color: ColorsManager.primaryColor)),
        ),
      ),
    );
  }
}
