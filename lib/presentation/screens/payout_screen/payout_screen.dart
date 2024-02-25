import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wafi_vendor/core/app_theme/app_colors.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/assets_path/svg_path.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/gradiant_color_button.dart';

import '../../../core/constants/constants.dart';

class PayoutScreen extends StatelessWidget {
  const PayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: AppBar(
          centerTitle: true,
          title: Text(
            "Payout",
            style: CustomThemes.greyColor1CTextStyle(context).copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            CustomGradientButton(
              height: 32,
              onPressed: () {},
              width: 84,
              child: Text(
                "Withdrow",
                style: CustomThemes.whiteColoTextTheme(context).copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const CustomSizedBox(
              width: 16,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Expanded(
                child: PayoutContainer(
                  color: AppColors.payoutYellowColor,
                  svgPath: SvgPath.dollarHand,
                  title: "Lifetime Earning",
                  money: "45678",
                ),
              ),
              CustomSizedBox(
                width: 16,
              ),
              Expanded(
                child: PayoutContainer(
                  color: AppColors.currentBalanceBlueColor,
                  svgPath: SvgPath.dollarRecycle,
                  title: "Current Ballance",
                  money: "45678",
                ),
              ),
            ],
          ).symmetricPadding(horizontal: 16),
          const CustomSizedBox(
            height: 24,
          ),
          Text(
            "Withdrawal History",
            style: CustomThemes.greyColor1CTextStyle(context).copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ).onlyDirectionalPadding(start: 16),
          const CustomSizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              itemBuilder: (_, index) => const PayoutTransactionContainer(),
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

class PayoutContainer extends StatelessWidget {
  final Color color;
  final String svgPath;
  final String title;
  final String money;

  const PayoutContainer({
    super.key,
    required this.color,
    required this.svgPath,
    required this.title,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 12.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: color,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            svgPath,
            width: 24.w,
            height: 24.h,
            colorFilter:
                const ColorFilter.mode(AppColors.whiteColor, BlendMode.srcIn),
          ),
          const CustomSizedBox(
            height: 16,
          ),
          Text(
            title,
            style: CustomThemes.whiteColoTextTheme(context).copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          const CustomSizedBox(
            height: 16,
          ),
          Row(
            children: [
              SvgPicture.asset(
                SvgPath.dollarMoney,
                width: 24.w,
                height: 24.h,
                colorFilter: const ColorFilter.mode(
                    AppColors.whiteColor, BlendMode.srcIn),
              ),
              const CustomSizedBox(
                width: 2,
              ),
              Text(
                money,
                style: CustomThemes.whiteColoTextTheme(context).copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PayoutTransactionContainer extends StatelessWidget {
  const PayoutTransactionContainer({super.key});

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
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
                      style:
                          CustomThemes.greyColor99TextStyle(context).copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const CustomSizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
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
                      style:
                          CustomThemes.greyColor99TextStyle(context).copyWith(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
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
