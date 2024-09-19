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
              // 전체를 Card로 싸주기
              Card(
                color: Theme.of(context).colorScheme.onPrimary,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 500,
                        height: 220,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 45, // 아래로 내리고 싶은 정도의 값으로 설정
                              left: 0,
                              right: 0,
                              child: Container(
                                width: 500,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const CircleAvatar(
                                        radius: 80,
                                        backgroundImage: AssetImage(
                                          "images/testProfileImage.jpeg",
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      // 글박스 부분
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: profileTextList
                                            .map((profileText) => MyProfileView(
                                                profileText: profileText))
                                            .toList(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                textWidget.showTitelsWidget(
                                  context: context,
                                  icon: Icons.badge,
                                  text: 'Profile',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      // 스킬부분
                      SizedBox(
                        width: 800,
                        height: 650,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 40, // 아래로 내리고 싶은 정도의 값으로 설정
                              left: 0,
                              right: 0,
                              child: mySkillsView(context: context),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                textWidget.showTitelsWidget(
                                  context: context,
                                  icon: Icons.auto_stories,
                                  text: 'Skills',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // textWidget.showDivider(context: context, paddingSize: 15),
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
