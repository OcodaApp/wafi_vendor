import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:wafi_vendor/core/app_router/screens_name.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/gradiant_color_button.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import 'custom_sized_box.dart';

class AcceptTimeDialog extends StatefulWidget {
  const AcceptTimeDialog({super.key});

  @override
  State<AcceptTimeDialog> createState() => _AcceptTimeDialogState();
}

class _AcceptTimeDialogState extends State<AcceptTimeDialog> {
  List<String> timeList =
      List.generate(24, (index) => '${index.toString().padLeft(2, '0')}:00 AM');

  int selectedTimeIndex1 = 0;
  int selectedTimeIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.whiteColor,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      surfaceTintColor: AppColors.whiteColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          CustomSizedBox(height: 32,),
          GradientText(
            "Add expected time",
            colors: AppColors.gradientColorsList,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          CustomSizedBox(height: 32,),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 100.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 19.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          gradient: LinearGradient(
                            colors: AppColors.gradientColorsList,
                            begin: AlignmentDirectional.topStart,
                            end: AlignmentDirectional.bottomEnd,
                          ),

                        ),
                      ),
                      ListWheelScrollView.useDelegate(
                        itemExtent: 20,
                        //// Height of each item
                        physics: const FixedExtentScrollPhysics(),
                        useMagnifier: true,
                        magnification: 1.2,
                        childDelegate:
                        ListWheelChildBuilderDelegate(
                            builder: (context, index) {
                              return buildTimeItem(
                                  timeList[index],
                                  selectedTimeIndex1 == index,
                                  context);
                            },
                            childCount: timeList.length),
                        // timeList.map((time) {
                        //   return buildTimeItem(time,selectedTimeIndex1==time.);
                        // }).toList(),
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedTimeIndex1 = index;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 100.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 19.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          gradient: LinearGradient(
                            colors: AppColors.gradientColorsList,
                            begin: AlignmentDirectional.topStart,
                            end: AlignmentDirectional.bottomEnd,
                          ),

                        ),
                      ),
                      ListWheelScrollView.useDelegate(
                        itemExtent: 20,
                        //// Height of each item
                        physics: const FixedExtentScrollPhysics(),
                        useMagnifier: true,
                        magnification: 1.2,
                        childDelegate:
                        ListWheelChildBuilderDelegate(
                            builder: (context, index) {
                              return buildTimeItem(
                                  timeList[index],
                                  selectedTimeIndex2 == index,
                                  context);
                            },
                            childCount: timeList.length),
                        // timeList.map((time) {
                        //   return buildTimeItem(time,selectedTimeIndex2==time.);
                        // }).toList(),
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedTimeIndex2 = index;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          CustomSizedBox(height: 32,),
          CustomGradientButton(
            onPressed: (){

            },
            height: 40,
            child: Text(
              "Continue",
              style: CustomThemes.whiteColoTextTheme(context).copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ).symmetricPadding(horizontal: 48),
          CustomSizedBox(height: 32,),
        ],
      ).symmetricPadding(horizontal: 16),
    );
  }

  Widget buildTimeItem(String time, bool isSelected, BuildContext context) {
    return Center(
      child: Text(
        time,
        style: CustomThemes.whiteColoTextTheme(context).copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            color: isSelected ? null : AppColors.color16),
      ),
    );
  }
}
