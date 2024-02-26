import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_app_bar.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/images_path.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widgets/custom_sized_box.dart';
import '../../widgets/shared_widgets/form_item_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: CustomAppBar(
          title: "Profile",
          centerTitle: true,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w,),
        children: [
          Center(
            child: CustomSizedBox(
              height: 140,
              width: 160,
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 120.h,
                      width: 120.w,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(
                        ImagesPath.categoriesDummy2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.shadowColor(value: 0.22),
                          offset: Offset.zero,
                          blurRadius: 40.r,
                        )
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: const CircleBorder(),
                        backgroundColor: AppColors.whiteColor,
                        foregroundColor: AppColors.primaryColor,
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const CustomSizedBox(height: 16),
          const FormItemWidget(
            title: "Name",
            hintText: "User Name",
          ),
          const CustomSizedBox(height: 16),
          const FormItemWidget(
            title: "Phone Number",
            hintText: "Ex:-000000000",
          ),
          const CustomSizedBox(height: 16),
          Row(
            children: [
              Text(
                "Overall Rating:",
                style: CustomThemes.greyColor16TextStyle(context).copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(Icons.star,color: Colors.amber,size: 18.r,),
              Text(
                "4.5",
                style: CustomThemes.greyColor16TextStyle(context).copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              GradientText(
                "View Details",
                colors: AppColors.gradientColorsList,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
