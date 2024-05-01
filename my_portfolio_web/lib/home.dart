import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_web/Components/text_widget.dart';
import 'package:my_portfolio_web/VM/home_ctrl.dart';
import 'package:my_portfolio_web/View/my_profile_view.dart';
import 'package:my_portfolio_web/View/my_project_view.dart';
import 'package:my_portfolio_web/View/myappbar.dart';
import 'package:my_portfolio_web/View/my_skills_view.dart';
import 'package:my_portfolio_web/model/profile_text.dart';

class Home extends StatelessWidget {
  final Function(ThemeMode) onChangeTheme;
  const Home({super.key, required this.onChangeTheme});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    TextWidget textWidget = TextWidget();

    List<ProfileText> profileTextList =
        ProfileText.profileContent; // Profile model의 데이터를 사용
    return Scaffold(
      appBar: MyAppbar(onChangeTheme: onChangeTheme),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                color: Theme.of(context).colorScheme.tertiary,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: textWidget.showTitelsWidget(
                          context: context,
                          icon: Icons.badge,
                          text: 'Profile',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: SizedBox(
                            width: 500,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 100,
                                  backgroundImage: const AssetImage(
                                    "images/testProfileImage.jpeg",
                                  ),
                                  foregroundColor:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                // 글박스 부분
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.onSecondary,
                                    width: 1,
                                  )),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: profileTextList
                                        .map((profileText) =>
                                            MyProfileView(profileText: profileText))
                                        .toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // 스킬부분
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        child: textWidget.showTitelsWidget(
                          context: context,
                          icon: Icons.auto_stories,
                          text: 'Skills',
                        ),
                      ),
                      textWidget.showDivider(context: context, paddingSize: 15),
                      mySkillsView(context: context),
                      // 프로젝트 위젯부분
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                        child: textWidget.showTitelsWidget(
                            context: context,
                            icon: Icons.laptop_mac,
                            text: 'Project'),
                      ),
                      textWidget.showDivider(context: context, paddingSize: 15),
                      const MyProjectView()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  // --- Functions ---
} // End
