import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_web/Components/icon_widget.dart';
import 'package:my_portfolio_web/Components/text_widget.dart';
import 'package:my_portfolio_web/VM/home_ctrl.dart';
import 'package:my_portfolio_web/View/myappbar.dart';
import 'package:my_portfolio_web/View/my_skills.dart';
import 'package:my_portfolio_web/utils/icon_image_data.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:simple_icons/simple_icons.dart';

class Home extends StatelessWidget {
  final Function(ThemeMode) onChangeTheme;
  const Home({super.key, required this.onChangeTheme});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: MyAppbar(onChangeTheme: onChangeTheme),
      body: SingleChildScrollView(
        child: Center(
          child: ResponsiveRowColumn(
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
            columnPadding: const EdgeInsets.all(30),
            layout: ResponsiveBreakpoints.of(context).isDesktop
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    width: ResponsiveBreakpoints.of(context).isDesktop
                        ? 300
                        // MediaQuery.of(context).size.width * 0.23
                        : 600,
                    // MediaQuery.of(context).size.width * 0.7,
                    height: 500,
                    // ResponsiveBreakpoints.of(context).isDesktop
                    //     ? 500
                    //     // MediaQuery.of(context).size.height * 0.7
                    //     : 500,
                    //     // MediaQuery.of(context).size.height * 0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        // 왼쪽 프로필 컬럼
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          showTextWidget(
                            context: context,
                            text: "Profile",
                            weight: FontWeight.bold,
                            fontSize: 30,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: CircleAvatar(
                              radius: 120,
                              backgroundImage: const AssetImage(
                                "images/testProfileImage.jpeg",
                              ),
                              foregroundColor:
                                  Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                                width: 1,
                              )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  shoeProfileText(
                                    icon: Icons.assignment_ind,
                                    content: "정태영",
                                    context: context,
                                    weight: FontWeight.w600,
                                  ),
                                  shoeProfileText(
                                    icon: Icons.cake_rounded,
                                    content: "1998.12.24",
                                    context: context,
                                    weight: FontWeight.w600,
                                  ),
                                  shoeProfileText(
                                    icon: Icons.house_rounded,
                                    content: "경기도 수원시 권선구",
                                    context: context,
                                    weight: FontWeight.w600,
                                  ),
                                  shoeProfileText(
                                    icon: Icons.school_rounded,
                                    content: "평택대학교 융합소프트웨어학과",
                                    context: context,
                                    weight: FontWeight.w600,
                                  ),
                                  shoeProfileText(
                                    icon: Icons.email_rounded,
                                    content: "clclcfnfn@naver.com",
                                    context: context,
                                    weight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // 중앙 기술스텍 컬럼
              ResponsiveRowColumnItem(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Container(
                    width: ResponsiveBreakpoints.of(context).isDesktop
                        ?
                        // 1060
                        MediaQuery.of(context).size.width * 0.6
                        : 600,
                    // height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Column(
                      children: [
                        mySkills(context: context),
                        showTextWidget(
                          context: context,
                          text: "Project",
                          weight: FontWeight.bold,
                          fontSize: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Divider(
                            color: Theme.of(context).colorScheme.onSecondary,
                            height: 2.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  // --- Functions ---



} // End