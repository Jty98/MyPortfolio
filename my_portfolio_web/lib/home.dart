import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_web/VM/home_ctrl.dart';
import 'package:my_portfolio_web/View/myappbar.dart';

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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 0, 50),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.23,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      // 왼쪽 프로필 컬럼
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        CircleAvatar(
                          radius: 125,
                          backgroundImage:
                              const AssetImage("images/testProfileImage.jpeg"),
                          foregroundColor:
                              Theme.of(context).colorScheme.onTertiary,
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.22,
                            height: MediaQuery.of(context).size.height * 0.3,
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
              // 중앙 기술스텍 컬럼
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "기술스택",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.onTertiary,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Icon(
              icon,
              size: 22,
              color: Theme.of(context).colorScheme.onTertiary,
            ),
          ),
          Text(
            content,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onTertiary,
              fontWeight: weight,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  /// 중복되는 텍스트 위젯
  Widget textWidget(
      {required BuildContext context,
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
} // End
