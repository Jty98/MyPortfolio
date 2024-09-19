import 'package:flutter/material.dart';
import 'package:my_portfolio_web/Components/proejct_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyProjectView extends StatelessWidget {
  const MyProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveRowColumn(
        // rowCrossAxisAlignment: CrossAxisAlignment.start,
        rowMainAxisAlignment: MainAxisAlignment.center,
        columnPadding: const EdgeInsets.all(30),
        layout: ResponsiveBreakpoints.of(context).isDesktop
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        children: const [
          ResponsiveRowColumnItem(
            rowFlex: 1, // row일때 크기 비율
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: ProjectWidget(
                        titleText: "골든타임(Appstore출시)",
                        logoImage: "assets/images/goldentime_logo.png",
                        mockupImage: "assets/images/goldentime_mockup.png",
                        introduction: "현대인의 장건강 관리를 돕는 화장실 일지 앱"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: ProjectWidget(
                        titleText: "골든타임(Appstore출시)",
                        logoImage: "assets/images/goldentime_logo.png",
                        mockupImage: "assets/images/goldentime_mockup.png",
                        introduction: "현대인의 장건강 관리를 돕는 화장실 일지 앱"),
                  ),
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1, // row일때 크기 비율
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: ProjectWidget(
                        titleText: "골든타임(Appstore출시)",
                        logoImage: "assets/images/goldentime_logo.png",
                        mockupImage: "assets/images/goldentime_mockup.png",
                        introduction: "현대인의 장건강 관리를 돕는 화장실 일지 앱"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: ProjectWidget(
                        titleText: "골든타임(Appstore출시)",
                        logoImage: "assets/images/goldentime_logo.png",
                        mockupImage: "assets/images/goldentime_mockup.png",
                        introduction: "현대인의 장건강 관리를 돕는 화장실 일지 앱"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );    
  }
}
