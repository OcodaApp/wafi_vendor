import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:wafi_vendor/core/app_theme/app_colors.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/assets_path/images_path.dart';
import 'package:wafi_vendor/core/constants/constants.dart';
import 'package:wafi_vendor/core/constants/extensions.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';

import '../../widgets/support_widgets/chat_text_field.dart';
import '../../widgets/support_widgets/message_item_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16.h),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor(value: 0.07),
                  offset: Offset(0, 4.h),
                  blurRadius: 10.r,
                )
              ],
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(32.r,),
                bottomLeft: Radius.circular(32.r,),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSizedBox(
                  height: preferredSize.height,
                ),
                Row(
                  children: [
                    BackButton(
                      color: AppColors.dashedBorderColor,
                    ),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(ImagesPath.userNullImage,fit: BoxFit.cover,),
                    ),
                    CustomSizedBox(width: 8,),
                    Text("Abhimanyu",style: CustomThemes.darkGrayColorTheme(context).copyWith(fontSize: 16.sp,fontWeight: FontWeight.w700,),)
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h),
              reverse: true,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return MessageItemWidget(
                    isMyMessage: index % 2 == 0 ? true : false)
                    .onlyDirectionalPadding(bottom: 15);
              },
            ),
          ),
          const ChatTextField().symmetricPadding(horizontal: 24, vertical: 13),
        ],
      ),
    );
  }
}
