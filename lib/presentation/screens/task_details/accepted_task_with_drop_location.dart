import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafi_vendor/core/app_router/screens_name.dart';
import 'package:wafi_vendor/core/app_theme/app_colors.dart';
import 'package:wafi_vendor/core/assets_path/images_path.dart';
import 'package:wafi_vendor/core/assets_path/svg_path.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../widgets/dialogs/finish_task_dialog.dart';
import '../../widgets/shared_widgets/custom_outlined_button.dart';
import '../../widgets/shared_widgets/custom_sized_box.dart';
import '../../widgets/shared_widgets/gradient_svg.dart';

class DropAcceptedTaskDetailsFirstScreen extends StatelessWidget {
  const DropAcceptedTaskDetailsFirstScreen({super.key});

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
            const CustomSizedBox(
              height: 24,
            ),
            const CustomSizedBox(
              height: 24,
            ),
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
            const CustomSizedBox(
              height: 16,
            ),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                          style:
                          CustomThemes.greyColor1CTextStyle(context).copyWith(
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
                  Column(
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
                          "Customer",
                          style:
                          CustomThemes.greyColor1CTextStyle(context).copyWith(
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
                ],
              ),
            ),
            const CustomSizedBox(
              height: 24,
            ),
            Text(
              "Task Details",
              style: CustomThemes.greyColor75TextStyle(context).copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const CustomSizedBox(
              height: 16,
            ),
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
                  const CustomSizedBox(
                    height: 8,
                  ),
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
                  const CustomSizedBox(
                    height: 8,
                  ),
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
                  const CustomSizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Cach To Be Collected",
                        style:
                        CustomThemes.greyColor75TextStyle(context).copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "You Will Recieve",
                        style:
                        CustomThemes.greyColor75TextStyle(context).copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const CustomSizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "230 SAR",
                        style:
                        CustomThemes.greyColor75TextStyle(context).copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "230 SAR",
                        style:
                        CustomThemes.greyColor75TextStyle(context).copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const CustomSizedBox(height: 24,),
            Text(
              "Contact Customer",
              style: CustomThemes.greyColor75TextStyle(context).copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const CustomSizedBox(height: 16,),
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
                children: [
                  ListTile(
                    leading: const GradientSvg(svgPath: SvgPath.messageLine),
                    shape: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryColor, width: 0.9)),
                    contentPadding: EdgeInsets.zero,
                    onTap: (){
                      Navigator.pushNamed(context, ScreenName.chatScreen);
                    },
                    title: Text(
                      "Chat with customer",
                      style:
                      CustomThemes.greyColor75TextStyle(context).copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                  ),
                  ListTile(
                    leading: const GradientSvg(svgPath: SvgPath.phoneLine),
                    shape: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryColor, width: 0.9)),
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Connect through Call",
                      style:
                      CustomThemes.greyColor75TextStyle(context).copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      SvgPath.whatsapp,
                      colorFilter: const ColorFilter.mode(
                        AppColors.greenColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    shape: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColors.primaryColor, width: 0.9)),
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Connect through Call",
                      style:
                      CustomThemes.greyColor75TextStyle(context).copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    visualDensity: const VisualDensity(
                      horizontal: VisualDensity.minimumDensity,
                      vertical: VisualDensity.minimumDensity,
                    ),
                  ),
                ],
              ),
            ),
            const CustomSizedBox(
              height: 48,
            ),
            CustomOutlinedButton(
              height: 48,
              onPressed: () {
                showDialog(context: context, builder: (_)=>FinishTaskDialog(),);
              },
              foregroundColor: AppColors.primaryColor,
              width: double.infinity,
              borderColor: AppColors.primaryColor,
              borderRadius: 8,
              child: Text(
                "End Service",
                style: CustomThemes.primaryTextStyle(context).copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const CustomSizedBox(height: 24,),
          ],
        ).symmetricPadding(horizontal: 16),
      ),
    );
  }
}
