import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wafi_vendor/core/app_theme/app_colors.dart';
import 'package:wafi_vendor/core/app_theme/custom_themes.dart';
import 'package:wafi_vendor/core/assets_path/svg_path.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/custom_sized_box.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/gradient_svg.dart';
import 'package:wafi_vendor/presentation/widgets/shared_widgets/task_container.dart';

import '../../../core/constants/constants.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
  bool light = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.transparent)
              ),
              child: SvgPicture.asset(
                SvgPath.wafiLogo, // Path to your SVG logo
                width: 145,
                height: 38,
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                SvgPath.historyExistingCars, // Path to your SVG logo
                width: 24,
                height: 24,
              ),
              title: Text('Task History'),
              onTap: () {
                // Handle home item tap
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                SvgPath.editProfile, // Path to your SVG logo
                width: 24,
                height: 24,
              ),
              title: Text('Profile'),
              onTap: () {
                // Handle settings item tap
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                SvgPath.wallet, // Path to your SVG logo
                width: 24,
                height: 24,
              ),
              title: Text('Revenue'),
              onTap: () {
                // Handle about item tap
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                SvgPath.phoneLine, // Path to your SVG logo
                width: 24,
                height: 24,
              ),
              title: Text('Contact'),
              onTap: () {
                // Handle about item tap
              },
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: preferredSize,
        child: AppBar(
          elevation: 5,
          backgroundColor: AppColors.whiteColor,
          surfaceTintColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: SvgPicture.asset(
              SvgPath.menus,
              width: 32.w,
              height: 32.h,
            ),
          ),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                SvgPath.sendLine,
                height: 20.h,
                width: 20.w,
              ),
              const CustomSizedBox(
                width: 8,
              ),
              SizedBox(
                height: 32.h,
                width: 48.w,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Switch(
                    // This bool value toggles the switch.
                    value: light,

                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  ),
                ),
              ),
              const CustomSizedBox(
                width: 8,
              ),
              GradientSvg(
                svgPath: SvgPath.sendFill,
                height: 20.h,
                width: 20.w,
              )
            ],
          ),
        ),
      ),
      body: light
          ? DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 81.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.borderColor,
                    ),
                    child: TabBar(
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      labelColor: AppColors.whiteColor,
                      labelStyle:
                          CustomThemes.whiteColoTextTheme(context).copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        gradient: LinearGradient(
                          colors: AppColors.gradientColorsList,
                          begin: AlignmentDirectional.topStart,
                          end: AlignmentDirectional
                              .bottomEnd, // Your gradient colors
                        ),
                      ),
                      tabs: const [
                        Tab(text: 'Todays Tasks'),
                        Tab(text: 'All Tasks'),
                      ],
                    ),
                  ),
                  const CustomSizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        ListView.separated(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 32.h),
                          itemBuilder: (_, index) => TaskContainer(
                            backgroundTaskColor: index % 2 != 0
                                ? AppColors.redTaskColor
                                : AppColors.greenTaskColor,
                          ),
                          separatorBuilder: (_, index) => const CustomSizedBox(
                            height: 16,
                          ),
                          itemCount: 10,
                        ),
                        ListView.separated(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 32.h,
                          ),
                          itemBuilder: (_, index) => TaskContainer(
                            backgroundTaskColor: index % 2 == 0
                                ? AppColors.redTaskColor
                                : AppColors.greenTaskColor,
                          ),
                          separatorBuilder: (_, index) => const CustomSizedBox(
                            height: 16,
                          ),
                          itemCount: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
