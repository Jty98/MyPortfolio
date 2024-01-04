import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_web/VM/home_ctrl.dart';
import 'package:my_portfolio_web/View/myappbar.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:simple_icons/simple_icons.dart';

class Home extends StatelessWidget {
  final Function(ThemeMode) onChangeTheme;
  const Home({super.key, required this.onChangeTheme});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: MyAppbar(onChangeTheme: onChangeTheme),
      body: SingleChildScrollView(
        child: Center(
          child: ResponsiveRowColumn(
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            // rowPadding: const EdgeInsets.all(30),
            rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
            columnPadding: const EdgeInsets.all(30),
            layout: ResponsiveBreakpoints.of(context).isDesktop
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.COLUMN,
            // crossAxisAlignment: CrossAxisAlignment.start,
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
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        // 왼쪽 프로필 컬럼
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          textWidget(
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
                                  Theme.of(context).colorScheme.onTertiary,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Container(
                              // width:
                              // ResponsiveBreakpoints.of(context).isDesktop
                              //     ? MediaQuery.of(context).size.width * 0.8
                              //     : MediaQuery.of(context).size.width * 0.5,
                              // 300,
                              // : 1200.w,
                              // height:
                              //     ResponsiveBreakpoints.of(context).isDesktop
                              //         ? MediaQuery.of(context).size.height * 0.35
                              //         : MediaQuery.of(context).size.height * 0.2,
                              // 200,
                              // : 1000.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: Theme.of(context).colorScheme.onTertiary,
                                width: 1,
                              )),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  profileText(
                                    icon: Icons.assignment_ind,
                                    content: "정태영",
                                    context: context,
                                    weight: FontWeight.w600,
                                  ),
                                  profileText(
                                    icon: Icons.cake_rounded,
                                    content: "1998.12.24",
                                    context: context,
                                    weight: FontWeight.w600,
                                  ),
                                  profileText(
                                    icon: Icons.house_rounded,
                                    content: "경기도 수원시 권선구",
                                    context: context,
                                    weight: FontWeight.w600,
                                  ),
                                  profileText(
                                    icon: Icons.school_rounded,
                                    content: "평택대학교 융합소프트웨어학과",
                                    context: context,
                                    weight: FontWeight.w600,
                                  ),
                                  profileText(
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
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        textWidget(
                          context: context,
                          text: "기술스택",
                          weight: FontWeight.bold,
                          fontSize: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Divider(
                            color: Theme.of(context).colorScheme.onTertiary,
                            height: 2.0,
                          ),
                        ),
                        textWidget(
                          context: context,
                          text: "Languague",
                          weight: FontWeight.w500,
                          fontSize: 22,
                        ),
                        Icon(
                          SimpleIcons.n1001tracklists,
                          color: SimpleIconColors.n1001tracklists,
                          size: 50.0,
                        ),
                        const Text(
                          "data",
                          style: TextStyle(fontSize: 100),
                        ),
                        const Text(
                          "data",
                          style: TextStyle(fontSize: 100),
                        ),
                        const Text(
                          "data",
                          style: TextStyle(fontSize: 100),
                        ),
                        const Text(
                          "data",
                          style: TextStyle(fontSize: 100),
                        ),
                        const Text(
                          "data",
                          style: TextStyle(fontSize: 100),
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

  /// 자기 소개 중에서 텍스트를 담당하는 함수
  Widget profileText({
    required IconData icon,
    required String content,
    required BuildContext context,
    required FontWeight weight,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 300,
        height: 20,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Icon(
                icon,
                size: 16,
                color: Theme.of(context).colorScheme.onTertiary,
              ),
            ),
            Text(
              content,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onTertiary,
                fontWeight: weight,
                fontSize: resizeText(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 중복되는 텍스트 위젯
  Widget textWidget({
    required BuildContext context,
    required String text,
    required FontWeight weight,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: Theme.of(context).colorScheme.onTertiary,
        fontWeight: weight,
        fontSize: fontSize,
      ),
    );
  }

  /// 글자 크기 정해주는 함수
  double resizeText(
    BuildContext context,
  ) {
    double textSize = 0.0;
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      textSize = 14.0;
    } else if (ResponsiveBreakpoints.of(context).isTablet) {
      textSize = 12.0;
    } else {
      textSize = 12.0;
    }

    return textSize;
  }
} // End