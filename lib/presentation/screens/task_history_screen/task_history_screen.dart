import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_app_bar.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widgets/gradiant_color_button.dart';
import '../../widgets/shared_widgets/task_container.dart';

class TaskHistoryScreen extends StatelessWidget {
  const TaskHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: const CustomAppBar(
          centerTitle: true,
          title: "Earnings",
        ),
      ),
      body: Column(
        children: [
          const CustomSizedBox(
            height: 32,
          ),
          const Row(
            children: [
              Expanded(
                child: TskHistoryContainer(
                  title: "50",
                  description: "Accepted Orders",
                ),
              ),
              CustomSizedBox(
                width: 16,
              ),
              Expanded(
                child: TskHistoryContainer(
                  title: "10",
                  description: "Rejected Orders",
                ),
              ),
              CustomSizedBox(
                width: 16,
              ),
              Expanded(
                child: TskHistoryContainer(
                  title: "76.5%",
                  description: "Acceptance Rate",
                ),
              ),
            ],
          ).symmetricPadding(horizontal: 16),
          const CustomSizedBox(
            height: 16,
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: CustomGradientButton(
              height: 40,
              onPressed: () {},
              width: 108,
              child: Text(
                "Filter by date",
                style: CustomThemes.whiteColoTextTheme(context).copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ).onlyDirectionalPadding(end: 16),
          ),
          const CustomSizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              itemBuilder: (_, index) => TaskContainer(
                index:index,
              ),
              separatorBuilder: (_, index) => const CustomSizedBox(
                height: 16,
              ),
              itemCount: 10,
            ),
          ),
          const CustomSizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}

class TskHistoryContainer extends StatelessWidget {
  final String title;
  final String description;

  const TskHistoryContainer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 16.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(
              0,
              4.h,
            ),
            color: AppColors.shadowColor(
              value: 0.09,
            ),
            blurRadius: 8.r,
          )
        ],
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GradientText(
            title,
            colors: AppColors.gradientColorsList,
            style: CustomThemes.greyColor1CTextStyle(context).copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18.sp,
            ),
          ),
          const CustomSizedBox(
            height: 10,
          ),
          Text(
            description,
            style: CustomThemes.greyColor1CTextStyle(context).copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
            ),
          )
        ],
      ),
    );
  }
}
