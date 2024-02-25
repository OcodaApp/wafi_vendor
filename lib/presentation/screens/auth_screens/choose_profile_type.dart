import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:wafi_vendor/core/app_theme/app_colors.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/assets_path/images_path.dart';
import 'package:wafi_vendor/core/assets_path/svg_path.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/form_date_item.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/form_drom_down_widget.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/form_item_widget.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/gradiant_color_button.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/gradient_check_box.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/gradient_svg.dart';

class ChooseProfileTypeScreen extends StatefulWidget {
  const ChooseProfileTypeScreen({super.key});

  @override
  State<ChooseProfileTypeScreen> createState() =>
      _ChooseProfileTypeScreenState();
}

class _ChooseProfileTypeScreenState extends State<ChooseProfileTypeScreen> {
  bool courier = false;
  bool agent = false;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 32.h,
          ),
          children: [
            Text(
              "Choose your Profile",
              style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const CustomSizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: DriverTypeButton(
                    value: courier,
                    imagePath: ImagesPath.courier,
                    title: "I am a Courier",
                    onChanged: (value) {
                      courier = value!;
                      setState(() {});
                    },
                  ),
                ),
                const CustomSizedBox(
                  width: 16,
                ),
                Expanded(
                  child: DriverTypeButton(
                    value: agent,
                    imagePath: ImagesPath.agent,
                    title: "I am a Agent",
                    onChanged: (value) {
                      agent = value!;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            const CustomSizedBox(
              height: 24,
            ),
            Text(
              "Personal details",
              style: CustomThemes.greyColor75TextStyle(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            const CustomSizedBox(
              height: 16,
            ),
            const FormItemWidget(title: "Name", hintText: "Name"),
            const CustomSizedBox(
              height: 16,
            ),
            const FormDropDownWidget(title: "Nationality"),
            const CustomSizedBox(
              height: 16,
            ),
            const FormDropDownWidget(title: "Served City"),
            const CustomSizedBox(
              height: 24,
            ),
            Text(
              "Gender",
              style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const CustomSizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: DriverGenderButton(
                    title: "Male",
                    isSelected: isMale,
                    onTap: () {
                      isMale = true;
                      setState(() {});
                    },
                  ),
                ),
                const CustomSizedBox(
                  width: 16,
                ),
                Expanded(
                  child: DriverGenderButton(
                    title: "Female",
                    isSelected: !isMale,
                    onTap: () {
                      isMale = false;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
            const CustomSizedBox(
              height: 24,
            ),
            const FormDateWidget(title: "Date of birth"),
            const CustomSizedBox(
              height: 24,
            ),
            const FormDropDownWidget(title: "Served car Brands"),
            const CustomSizedBox(
              height: 24,
            ),
            Text(
              "Provide Services",
              style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const ProvidesServicesItem(
              title: 'Battery Service',
              svgPath: SvgPath.carBattery,
            ),
            const ProvidesServicesItem(
              title: 'Tires Service',
              svgPath: SvgPath.racing,
            ),
            const ProvidesServicesItem(
              title: 'Locksmith',
              svgPath: SvgPath.lockSmith,
            ),
            const ProvidesServicesItem(
              title: 'Fuel',
              svgPath: SvgPath.fuel,
            ),
            const ProvidesServicesItem(
              title: 'Oil',
              svgPath: SvgPath.oil,
            ),
            const ProvidesServicesItem(
              title: 'Car Check-Up',
              svgPath: SvgPath.carRepair,
            ),
            const ProvidesServicesItem(
              title: 'Towing Service',
              svgPath: SvgPath.towTruck,
            ),
            const ProvidesServicesItem(
              title: 'Car Detailing',
              svgPath: SvgPath.carWash,
            ),
            const CustomSizedBox(
              height: 32,
            ),
            CustomGradientButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Next",
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
      ),
    );
  }
}

class DriverTypeButton extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;
  final String imagePath;
  final String title;

  const DriverTypeButton({
    super.key,
    required this.value,
    this.onChanged,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.whiteColor,
      child: InkWell(
        onTap: () {
          if (onChanged != null) {
            onChanged!(!value);
          }
        },
        child: Ink(
          padding: EdgeInsets.all(
            1.sp,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: AppColors.gradientColorsList,
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
            ),
            borderRadius: BorderRadius.circular(4.r),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 8.h),
                blurRadius: 12.r,
                color: AppColors.shadowColor(value: 0.1),
              )
            ],
          ),
          child: Ink(
            padding: EdgeInsets.symmetric(vertical: 8.h),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(4.r),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 8.h),
                  blurRadius: 12.r,
                  color: AppColors.shadowColor(value: 0.1),
                ),
              ],
            ),
            child: Row(
              children: [
                Checkbox(
                  value: value,
                  onChanged: onChanged,
                  activeColor: AppColors.greenColor,
                  side: BorderSide(
                    color: AppColors.borderColor,
                  ),
                  visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity,
                  ),
                ),
                const CustomSizedBox(
                  width: 8,
                ),
                Image.asset(
                  imagePath,
                  width: 14.w,
                  height: 18.h,
                ),
                const CustomSizedBox(
                  width: 8,
                ),
                Text(
                  title,
                  style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DriverGenderButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool isSelected;

  const DriverGenderButton({
    super.key,
    required this.title,
    this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.whiteColor,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          padding: EdgeInsets.all(
            1.sp,
          ),
          decoration: BoxDecoration(
            border: !isSelected
                ? Border.all(
                    color: AppColors.borderColor,
                  )
                : null,
            gradient: isSelected
                ? LinearGradient(
                    colors: AppColors.gradientColorsList,
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                  )
                : null,
            borderRadius: BorderRadius.circular(4.r),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 8.h),
                blurRadius: 12.r,
                color: AppColors.shadowColor(value: 0.1),
              )
            ],
          ),
          child: Ink(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(2.r),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 8.h),
                  blurRadius: 12.r,
                  color: AppColors.shadowColor(value: 0.1),
                ),
              ],
            ),
            child: isSelected
                ? GradientText(
                    title,
                    textAlign: TextAlign.center,
                    colors: AppColors.gradientColorsList,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : Text(
                    title,
                    textAlign: TextAlign.center,
                    style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class ProvidesServicesItem extends StatefulWidget {
  final String title;
  final String svgPath;

  const ProvidesServicesItem({
    super.key,
    required this.title,
    required this.svgPath,
  });

  @override
  State<ProvidesServicesItem> createState() => _ProvidesServicesItemState();
}

class _ProvidesServicesItemState extends State<ProvidesServicesItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        if (isChecked) {
          isChecked = false;
          setState(() {});
        } else {
          isChecked = true;
          setState(() {});
        }
      },
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.maximumDensity,
      ),
      shape: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 0.5)),
      contentPadding: EdgeInsets.zero,
      leading: GradientCheckBox(
        checked: isChecked,
        onChanged: (value) {
          isChecked = value!;
          setState(() {});
        },
      ),
      title: Row(
        children: [
          GradientSvg(
            svgPath: widget.svgPath,
            width: 24.w,
            height: 24.h,
          ),
          const CustomSizedBox(width: 16),
          Text(
            widget.title,
            style: CustomThemes.greyColor1CTextStyle(context).copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
