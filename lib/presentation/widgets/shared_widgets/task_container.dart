import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafi_vendor/core/app_router/screens_name.dart';
import 'package:wafi_vendor/core/app_theme/app_colors.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/assets_path/svg_path.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

class TaskContainer extends StatelessWidget {
  final Widget? child;
  final int index;

  const TaskContainer({
    super.key,
    this.child,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          index % 2 != 0
              ? ScreenName.taskDetailsScreen
              : ScreenName.dropTaskDetailsScreen,
        );
      },
      child: Container(
        padding: EdgeInsetsDirectional.only(start: 5.w),
        decoration: BoxDecoration(
          color: index % 2 != 0
              ? AppColors.redTaskColor
              : AppColors.greenTaskColor,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4.h),
              blurRadius: 6.r,
              color: AppColors.shadowColor(value: 0.1),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadiusDirectional.only(
              bottomEnd: Radius.circular(
                8.r,
              ),
              topEnd: Radius.circular(
                8.r,
              ),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4.h),
                blurRadius: 6.r,
                color: AppColors.shadowColor(value: 0.1),
              ),
              BoxShadow(
                offset: Offset(4.w, 0),
                blurRadius: 6.r,
                color: AppColors.shadowColor(value: 0.1),
              ),
            ],
          ),
          child: child ??
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Your open gate to the world, Enjoy ! Second Line." *
                              2,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: CustomThemes.greyColor1CTextStyle(context)
                              .copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(
                          6.sp,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor.withOpacity(0.17),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          index % 2 != 0 ? "Battery Service" : "Spare Parts",
                          style:
                              CustomThemes.primaryTextStyle(context).copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  const CustomSizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        SvgPath.historyExistingCars,
                        width: 16.w,
                        height: 16.h,
                        colorFilter: const ColorFilter.mode(
                          AppColors.greyColor75,
                          BlendMode.srcIn,
                        ),
                      ),
                      const CustomSizedBox(width: 8),
                      Text(
                        "22 jan 2023 20:20 PM",
                        style:
                            CustomThemes.greyColor75TextStyle(context).copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const CustomSizedBox(
                    height: 8,
                  ),
                  Text(
                    "20:20",
                    style: CustomThemes.greyColor75TextStyle(context).copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
