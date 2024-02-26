import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/app_router/screens_name.dart';
import '../../../core/app_theme/app_colors.dart';
import '../../../core/app_theme/custom_themes.dart';
import '../../../core/assets_path/svg_path.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/shared_widgets/custom_sized_box.dart';
import '../../widgets/shared_widgets/gradient_svg.dart';
import '../../widgets/shared_widgets/task_container.dart';

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
        child: SafeArea(
          child: ListView(
            children: [
              const CustomSizedBox(
                height: 32,
              ),
              SvgPicture.asset(
                SvgPath.wafiLogo, // Path to your SVG logo
                width: 145,
                height: 38,
              ),
              const CustomSizedBox(
                height: 48,
              ),
              DrawerItem(
                title: "Task History",
                svgPath: SvgPath.insurance,
                onTap: () {
                  _scaffoldKey.currentState?.closeDrawer();
                  Navigator.pushNamed(context, ScreenName.taskHistoryScreen);
                },
              ),
              DrawerItem(
                title: "Profile",
                svgPath: SvgPath.accountNew,
                onTap: () {
                  _scaffoldKey.currentState?.closeDrawer();
                  Navigator.pushNamed(
                    context,
                    ScreenName.profileScreen,
                  );
                },
              ),
              DrawerItem(
                title: "Payout",
                svgPath: SvgPath.warrenty,
                onTap: () {
                  _scaffoldKey.currentState?.closeDrawer();
                  Navigator.pushNamed(context, ScreenName.payout);
                },
              ),
              DrawerItem(
                title: "Revenue",
                svgPath: SvgPath.wallet,
                onTap: () {
                  _scaffoldKey.currentState?.closeDrawer();
                  Navigator.pushNamed(
                    context,
                    ScreenName.earnings,
                  );
                },
              ),
              DrawerItem(
                title: "Contact",
                svgPath: SvgPath.phoneLine,
                onTap: () {
                  _scaffoldKey.currentState?.closeDrawer();
                  Navigator.pushNamed(
                    context,
                    ScreenName.contactScreen,
                  );
                },
              ),
              DrawerItem(
                title: "Logout",
                svgPath: SvgPath.logoutNew,
                onTap: () {},
              ),
            ],
          ),
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

class DrawerItem extends StatelessWidget {
  final String title;
  final String svgPath;
  final void Function()? onTap;

  const DrawerItem({
    super.key,
    required this.title,
    required this.svgPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
      style: ListTileStyle.drawer,
      visualDensity: const VisualDensity(
        horizontal: VisualDensity.minimumDensity,
        vertical: VisualDensity.minimumDensity,
      ),
      leading: SvgPicture.asset(
        svgPath, // Path to your SVG logo
        width: 24.w,
        height: 24.h,
      ),
      title: Text(title),
      onTap: onTap,
    );
  }
}
