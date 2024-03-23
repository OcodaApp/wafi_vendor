import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';

class FinishTaskDialog extends StatelessWidget {
  const FinishTaskDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.whiteColor,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      surfaceTintColor: AppColors.whiteColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ChildWidget(title: "Success", icon: Icons.check, iconColor: AppColors.redTaskColor,onTap: (){},),
          CustomSizedBox(height: 16,),
          ChildWidget(title: "Failure", icon: Icons.clear, iconColor: AppColors.greenColor,onTap: (){},),
        ],
      ).symmetricPadding(horizontal: 16,vertical: 32),
    );
  }
}
class ChildWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final void Function()? onTap;
  const ChildWidget({super.key, required this.title, required this.icon, required this.iconColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius:
          BorderRadius.circular(8.r),
      side: BorderSide(
        color: AppColors.greyColor97,
        width: 0.5.w
      )
      ),

      onTap: onTap,
      leading: Icon(
        icon,
        color: iconColor,
        size: 22.sp,
      ),
      horizontalTitleGap: 8.w,
      title: Text(
        title,
        style: CustomThemes.greyColor1CTextStyle(context).copyWith(
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
