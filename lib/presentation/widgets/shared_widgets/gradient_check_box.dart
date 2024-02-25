import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';

class GradientCheckBox extends StatelessWidget{
  final void Function(bool?)? onChanged;
  final bool checked;
  const GradientCheckBox({super.key, this.onChanged, required this.checked});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 20.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.r),
        gradient: LinearGradient(
          colors: AppColors.gradientColorsList,
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
        ),
      ),
      alignment: Alignment.center,
      child: Checkbox(
        value: checked,
        onChanged: onChanged,
        visualDensity: const VisualDensity(
          horizontal: VisualDensity.minimumDensity,
          vertical: VisualDensity.minimumDensity,
        ),
        focusColor: AppColors.whiteColor,
        fillColor: MaterialStateProperty.all(
          checked ? Colors.transparent : AppColors.whiteColor,
        ),
        // activeColor: Colors.transparent,
        checkColor: AppColors.whiteColor,
        side: const BorderSide(color: AppColors.whiteColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.r),
          side: const BorderSide(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
