import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafi_vendor/core/app_router/screens_name.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_app_bar.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/form_date_item.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/form_drom_down_widget.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/form_item_widget.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/form_upload_item_widegt.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widgets/custom_sized_box.dart';
import '../../widgets/shared_widgets/gradiant_color_button.dart';

class CompleteDocumentationScreen extends StatelessWidget {
  final bool isCarDetails;
  const CompleteDocumentationScreen({super.key, required this.isCarDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: const CustomAppBar(
          title: "",
          elevation: 3,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 32.h,
        ),
        children: [
          Text(
            "Documentation",
            style: CustomThemes.greyColor75TextStyle(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const CustomSizedBox(height: 24),
          const FormUploadItemWidget(
            title: "Profile Picture",
            description: "Upload Profile Pictur",
          ),
          const CustomSizedBox(height: 16),
          const FormUploadItemWidget(
            title: "National ID",
            description: "Upload National ID",
          ),
          const CustomSizedBox(height: 16),
          const FormItemWidget(
              title: "National ID Number", hintText: "*************"),
          const CustomSizedBox(height: 16),
          const FormDateWidget(title: "National ID Expiry Date"),
          const CustomSizedBox(height: 16),
          const FormItemWidget(
              title: "Bank IBAN Number", hintText: "*************"),
          const CustomSizedBox(height: 24),
          if(isCarDetails)const CarDetailsForm(),
          const CustomSizedBox(
            height: 32,
          ),
          CustomGradientButton(
            onPressed: () {
              Navigator.pushNamed(context, ScreenName.mainLayoutScreen);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Continue",
                  style: CustomThemes.whiteColoTextTheme(context).copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const CustomSizedBox(
                  width: 16,
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: AppColors.whiteColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CarDetailsForm extends StatelessWidget {
  const CarDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Car Details",
          style: CustomThemes.greyColor75TextStyle(context).copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        const CustomSizedBox(height: 16),
        const FormUploadItemWidget(
          title: "Vehicle Registration Pic.",
          description: "Registration Picture",
        ),
        const CustomSizedBox(height: 16),
        const FormItemWidget(
          title: "License plate number ",
          hintText: "***** ***** ***",
        ),
        const CustomSizedBox(height: 16),
        const FormUploadItemWidget(
          title: "Car Photo",
          description: "Upload Car Photo",
        ),
        const CustomSizedBox(height: 16),
        const FormDropDownWidget(title: "Vehicle Type"),
        const CustomSizedBox(height: 16),
        const FormDropDownWidget(title: "Vehicle Model"),
        const CustomSizedBox(height: 16),
        const FormDropDownWidget(title: "Vehicle Year"),
        const CustomSizedBox(height: 16),
      ],
    );
  }
}
