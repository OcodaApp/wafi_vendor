import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/svg_path.dart';
import 'custom_sized_box.dart';
import 'custom_text_form_field.dart';
import 'gradient_svg.dart';

class FormUploadItemWidget extends StatelessWidget {
  final String title;
  final bool isRequired;

  const FormUploadItemWidget({
    super.key,
    required this.title,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title.tr(),
            style: CustomThemes.greyColor16TextStyle(context).copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal
            ),
            children: [
              if (isRequired)
                TextSpan(
                  text: "  (Required)",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.red,
                  ),
                )
            ],
          ),
        ),
        const CustomSizedBox(
          height: 8,
        ),
        DottedBorder(
          color: AppColors.dashedBorderColor,
          borderType: BorderType.RRect,
          dashPattern: const [8, 4],
          padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
          radius: const Radius.circular(16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add_circle_outline_sharp,
                  color: AppColors.color1C,
                ),
                const CustomSizedBox(width: 8,),
                Text(
                  "Upload DRIVER’S LICENSE",
                  style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
