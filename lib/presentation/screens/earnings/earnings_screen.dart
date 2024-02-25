import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_app_bar.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

import '../../../core/app_theme/app_colors.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widgets/gradiant_color_button.dart';

class EarningsScreen extends StatelessWidget {
  const EarningsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: CustomAppBar(
          centerTitle: true,
          title: "Earnings",
        ),
      ),
      body: Column(
        children: [
          CustomSizedBox(
            height: 32,
          ),
          Row(
            children: [
              Expanded(
                child: EarningContainer(
                  title: "SAR 1250.50",
                  description: "Total Earnings",
                ),
              ),
              CustomSizedBox(
                width: 16,
              ),
              Expanded(
                child: EarningContainer(
                  title: "SAR 500.00",
                  description: "Current balance",
                ),
              ),
            ],
          ).symmetricPadding(horizontal: 16),
          const CustomSizedBox(
            height: 24,
          ),
          CustomGradientButton(
            height: 40,
            onPressed: () {},
            width: double.infinity,
            child: Text(
              "Withdrow",
              style: CustomThemes.whiteColoTextTheme(context).copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ).symmetricPadding(horizontal: 50),
          const CustomSizedBox(
            height: 24,
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemBuilder: (_, index) => const EarningTransactionContainer(),
              separatorBuilder: (_, index) => const CustomSizedBox(
                height: 16,
              ),
              itemCount: 4,
            ),
          ),
          const CustomSizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}

class EarningContainer extends StatelessWidget {
  final String title;
  final String description;

  const EarningContainer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 32.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffe8f7fc),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
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

class EarningTransactionContainer extends StatelessWidget {
  const EarningTransactionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: const Color(0xffF5F5F5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: AppColors.gradientColorsList,
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "T",
                  style: CustomThemes.whiteColoTextTheme(context).copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const CustomSizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Credit",
                      style:
                      CustomThemes.greyColor1CTextStyle(context).copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "jan 22, 2020, 10:10AM ",
                      style:
                      CustomThemes.greyColor99TextStyle(context).copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Task #123",
                style: CustomThemes.greyColor99TextStyle(context).copyWith(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          const CustomSizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 12.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.whiteColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SvgPath.dollarMoney,
                            width: 14.w,
                            height: 14.h,
                            colorFilter: const ColorFilter.mode(
                              AppColors.greenColor,
                              BlendMode.srcIn,
                            ),
                          ),
                          const CustomSizedBox(
                            width: 2,
                          ),
                          Text(
                            "123",
                            style: CustomThemes.greyColor1CTextStyle(context)
                                .copyWith(
                              fontSize: 12.sp,
                              color: AppColors.greenColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Cash Collection",
                        textAlign: TextAlign.center,
                        style:
                        CustomThemes.greyColor99TextStyle(context).copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const CustomSizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SvgPath.dollarMoney,
                            width: 14.w,
                            height: 14.h,
                            colorFilter: const ColorFilter.mode(
                              AppColors.greenColor,
                              BlendMode.srcIn,
                            ),
                          ),
                          const CustomSizedBox(
                            width: 2,
                          ),
                          Text(
                            "123",
                            textAlign: TextAlign.center,
                            style: CustomThemes.greyColor1CTextStyle(context)
                                .copyWith(
                              fontSize: 12.sp,
                              color: AppColors.greenColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Earning of the Order",
                        textAlign: TextAlign.center,
                        style:
                        CustomThemes.greyColor99TextStyle(context).copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const CustomSizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            SvgPath.dollarMoney,
                            width: 14.w,
                            height: 14.h,
                            colorFilter: const ColorFilter.mode(
                              AppColors.greenColor,
                              BlendMode.srcIn,
                            ),
                          ),
                          const CustomSizedBox(
                            width: 2,
                          ),
                          Text(
                            "123",
                            style: CustomThemes.greyColor1CTextStyle(context)
                                .copyWith(
                              fontSize: 12.sp,
                              color: AppColors.greenColor,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "My Earnings",
                        textAlign: TextAlign.center,
                        style:
                        CustomThemes.greyColor99TextStyle(context).copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const CustomSizedBox(
            height: 16,
          ),
          Row(
            children: [
              SvgPicture.asset(
                SvgPath.mapsLocation,
                width: 16.w,
                height: 16.h,
                colorFilter: const ColorFilter.mode(
                  AppColors.color1C,
                  BlendMode.srcIn,
                ),
              ),
              const CustomSizedBox(
                width: 4,
              ),
              Expanded(
                child: Text(
                  "Your open gate to the world, Enjoy ! Second Line." * 2,
                  style: CustomThemes.greyColor1CTextStyle(context).copyWith(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
