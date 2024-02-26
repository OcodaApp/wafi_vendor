import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafi_vendor/core/app_theme/app_colors.dart';
import 'package:wafi_vendor/core/assets_path/images_path.dart';
import 'package:wafi_vendor/core/assets_path/svg_path.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/shared_widgets/accept_task_dialog_time.dart';
import '../../widgets/shared_widgets/gradiant_color_button.dart';

class TaskDetailsFirstScreen extends StatelessWidget {
  const TaskDetailsFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order ID: 6243692",
          style: CustomThemes.greyColor1CTextStyle(context).copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Cancel",
              style: CustomThemes.primaryTextStyle(context).copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 230.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16.r,
                ),
              ),
              child: Image.asset(
                ImagesPath.mapLocationDetails,
                fit: BoxFit.cover,
              ),
            ),
            CustomSizedBox(height: 24,),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 2.h,
                horizontal: 8.w,
              ),
              decoration: BoxDecoration(
                color: AppColors.greyColorD8,
                borderRadius: BorderRadius.circular(
                  8.r,
                ),
              ),
              child: Text(
                "Battery Service",
                style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomSizedBox(height: 16,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: 8.h,
                horizontal: 12.w,
              ),
              decoration: BoxDecoration(
                color: const Color(0xfff7faff),
                borderRadius: BorderRadius.circular(
                  8.r,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.h,
                      horizontal: 8.w,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.greyColorD8,
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                    ),
                    child: Text(
                      "Pickup",
                      style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const CustomSizedBox(
                    height: 8,
                  ),
                  Text(
                    "4376 Theresa Pines",
                    style: CustomThemes.greyColor75TextStyle(context).copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const CustomSizedBox(
                    height: 8,
                  ),
                  Text(
                    "Abu Dhabi Emirate",
                    style: CustomThemes.greyColor75TextStyle(context).copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            CustomSizedBox(height: 24,),
            Text(
              "Task Details",
              style: CustomThemes.greyColor75TextStyle(context).copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomSizedBox(height: 16,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: 8.h,
                horizontal: 12.w,
              ),
              decoration: BoxDecoration(
                color: const Color(0xfff7faff),
                borderRadius: BorderRadius.circular(
                  8.r,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rana Rana",
                        style:
                            CustomThemes.greyColor1CTextStyle(context).copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                      ),
                      Text(
                        "Order ID: 6243692",
                        style:
                            CustomThemes.greyColor1CTextStyle(context).copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                  CustomSizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Audi 4578",
                        style:
                            CustomThemes.greyColor1CTextStyle(context).copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 10.sp,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            SvgPath.phoneLine,
                            colorFilter: const ColorFilter.mode(
                              AppColors.currentBalanceBlueColor,
                              BlendMode.srcIn,
                            ),
                            width: 14.w,
                            height: 14.h,
                          ),
                          Text(
                            "6243692",
                            style: CustomThemes.greyColor1CTextStyle(context)
                                .copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CustomSizedBox(height: 8,),
                  Text(
                    "4376 Theresa Pines",
                    style: CustomThemes.greyColor75TextStyle(context).copyWith(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Abu Dhabi Emirate",
                    style: CustomThemes.greyColor75TextStyle(context).copyWith(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CustomSizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cach To Be Collected",
                        style: CustomThemes.greyColor75TextStyle(context).copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "You Will Recieve",
                        style: CustomThemes.greyColor75TextStyle(context).copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  CustomSizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "230 SAR",
                        style: CustomThemes.greyColor75TextStyle(context).copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "230 SAR",
                        style: CustomThemes.greyColor75TextStyle(context).copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomSizedBox(height: 48,),
            CustomGradientButton(
              height: 40,
              onPressed: () {
                showDialog(context: context, builder: (_)=>AcceptTimeDialog());
              },
              width: double.infinity,
              child: Text(
                "Accept and Start",
                style: CustomThemes.whiteColoTextTheme(context).copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ).symmetricPadding(horizontal: 16),
      ),
    );
  }
}
