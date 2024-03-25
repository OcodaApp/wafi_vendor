import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wafi_vendor/core/app_router/screens_name.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../widgets/shared_widgets/gradiant_color_button.dart';
import '../../widgets/shared_widgets/gradient_svg.dart';

class DoneTaskImagesScreen extends StatelessWidget {
  const DoneTaskImagesScreen({super.key});

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Upload the images of the spare parts ",
              style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ).onlyDirectionalPadding(start: 16),
            const CustomSizedBox(height: 24,),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 5.w,
                  mainAxisSpacing: 21.h,
                ),
                itemCount: 4 + 1,
                itemBuilder: (_, index) {
                  return index != 4
                      ? Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                top: 12.h,
                                end: 12.w,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional.bottomStart,
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  decoration: BoxDecoration(
                                    color: AppColors.greyColorD8,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                ),
                              ),
                            ),
                            GradientSvg(
                              svgPath: SvgPath.remove,
                              height: 28.h,
                              width: 28.w,
                            ),
                          ],
                        )
                      : DottedBorder(
                          color: AppColors.primaryColor,
                          borderType: BorderType.RRect,
                          dashPattern: const [8, 4],
                          padding: EdgeInsets.symmetric(
                              horizontal: 27.w, vertical: 27.h),
                          radius: const Radius.circular(16),
                          child: Center(
                            child: GradientSvg(
                              svgPath: SvgPath.add,
                              height: 24.h,
                              width: 24.w,
                            ),
                          ),
                        );
                },
              ),
            ),
            const CustomSizedBox(height: 32,),
            Center(
              child: CustomGradientButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenName.reviewScreen);
                },
                borderRadius: 4,
                width: 237,
                child: Text(
                  "Submit",
                  style: CustomThemes.whiteColoTextTheme(context).copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
