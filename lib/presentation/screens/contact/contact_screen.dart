import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafi_vendor/core/app_theme/app_colors.dart';
import 'package:wafi_vendor/core/assets_path/svg_path.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_app_bar.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../../core/constants/constants.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: CustomAppBar(
          title: "Contact",
          centerTitle: true,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w,),
        children: [
          CustomSizedBox(
            height: 32,
          ),
          Text(
            "Get In Touch",
            textAlign: TextAlign.center,
            style: CustomThemes.greyColor16TextStyle(context).copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          CustomSizedBox(
            height: 4,
          ),
          Text(
            "Want To Get In Touch? We'd love to Hear from you, here's how you can reach us",
            textAlign: TextAlign.center,
            style: CustomThemes.greyColor16TextStyle(context).copyWith(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          CustomSizedBox(
            height: 48,
          ),
          Row(
            children: [
              Container(
                height: 32.h,
                width: 32.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.greyColorD8,
                  ),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  SvgPath.phoneLine,
                  colorFilter: ColorFilter.mode(
                    AppColors.blueColor,
                    BlendMode.srcIn,
                  ),
                  height: 18.h,
                  width: 18.w,
                ),
              ),
              CustomSizedBox(width: 8,),
              Text(
                "+91-1234567890",
                textAlign: TextAlign.center,
                style: CustomThemes.greyColor16TextStyle(context).copyWith(
                  fontSize: 14.sp,
                  color: AppColors.blueColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          CustomSizedBox(height: 8,),
          Row(
            children: [
              Container(
                height: 32.h,
                width: 32.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.greyColorD8,
                    )),
                child: SvgPicture.asset(
                  SvgPath.messageLine,
                  colorFilter: ColorFilter.mode(
                    AppColors.blueColor,
                    BlendMode.srcIn,
                  ),
                  height: 18.h,
                  width: 18.w,
                ),
              ),CustomSizedBox(width: 8,),
              Text(
                "wafisupportexample.com",
                textAlign: TextAlign.center,
                style: CustomThemes.greyColor16TextStyle(context).copyWith(
                  fontSize: 14.sp,
                  color: AppColors.blueColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
