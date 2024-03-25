import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafi_vendor/core/app_router/screens_name.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../shared_widgets/gradiant_color_button.dart';

class FinishTaskDialog extends StatefulWidget {
  const FinishTaskDialog({super.key});

  @override
  State<FinishTaskDialog> createState() => _FinishTaskDialogState();
}

class _FinishTaskDialogState extends State<FinishTaskDialog> {
  int? currentIndex;

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
          Text(
            "Task Completed!",
            style: CustomThemes.greyColor1CTextStyle(context).copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          CustomSizedBox(height: 16,),
          ChildWidget(
            title: "Success",
            icon: Icons.check,
            iconColor: AppColors.greenColor,
            onTap: () {
              if (currentIndex == 0) {
                currentIndex = null;
                setState(() {});
              } else {
                currentIndex = 0;
                setState(() {});
              }
            },
            isSelected: currentIndex == 0,
          ),
          const CustomSizedBox(
            height: 16,
          ),
          ChildWidget(
            title: "Failure",
            icon: Icons.clear,
            iconColor: AppColors.redTaskColor,
            onTap: () {
              if (currentIndex == 1) {
                currentIndex = null;
                setState(() {});
              } else {
                currentIndex = 1;
                setState(() {});
              }
            },
            isSelected: currentIndex == 1,
          ),
          CustomSizedBox(height: 16,),
          CustomGradientButton(
            onPressed: () {
              Navigator.pushNamed(context, ScreenName.reviewScreen);
            },
            borderRadius: 4,
            width: 164,
            child: Text(
              "Submit",
              style: CustomThemes.whiteColoTextTheme(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ).symmetricPadding(horizontal: 16, vertical: 32),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final void Function()? onTap;
  final bool isSelected;

  const ChildWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.iconColor,
    this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // selected: isSelected,

      tileColor: isSelected?iconColor.withOpacity(0.3):null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
        side: BorderSide(
          color: AppColors.greyColor97,
          width: 0.5.w,
        ),
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
