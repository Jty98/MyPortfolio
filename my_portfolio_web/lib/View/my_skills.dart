import 'package:flutter/material.dart';
import 'package:my_portfolio_web/Components/icon_widget.dart';
import 'package:my_portfolio_web/Components/text_widget.dart';
import 'package:my_portfolio_web/utils/icon_image_data.dart';

/// skill 항목들 뷰
Widget mySkills({required BuildContext context}) {
  return Column(
    children: [
      showTextWidget(
        context: context,
        text: "Languague",
        weight: FontWeight.bold,
        fontSize: 22,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          showIconWidget(
            context: context,
            iconName: 'Dart',
            icon: IconImageData.dartIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Python',
            icon: IconImageData.pythonIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'R',
            icon: IconImageData.rIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Java',
            icon: IconImageData.javaIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Swift',
            icon: IconImageData.swiftIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'JavaScript',
            icon: IconImageData.javaScriptIcon,
          ),
        ],
      ),
      showTextWidget(
        context: context,
        text: "Framework & Server",
        weight: FontWeight.bold,
        fontSize: 22,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          showIconWidget(
            context: context,
            iconName: 'Flutter',
            icon: IconImageData.flutterIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'UIKit',
            icon: IconImageData.uiKitIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'MyBatis',
            icon: IconImageData.mybatisIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'FastAPI',
            icon: IconImageData.fastApiIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Flask',
            icon: IconImageData.flaskIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Spring Boot',
            icon: IconImageData.springIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Apache Tomcat',
            icon: IconImageData.apacheTomcatIcon,
          ),
        ],
      ),
      showTextWidget(
        context: context,
        text: "Database",
        weight: FontWeight.bold,
        fontSize: 22,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          showIconWidget(
            context: context,
            iconName: 'MySQL',
            icon: IconImageData.mySQLIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'SQLite',
            icon: IconImageData.sqliteIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Firebase',
            icon: IconImageData.firebaseIcon,
          ),
        ],
      ),
      showTextWidget(
        context: context,
        text: "IDE",
        weight: FontWeight.bold,
        fontSize: 22,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          showIconWidget(
            context: context,
            iconName: 'VSCode',
            icon: IconImageData.vsCodeIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'XCode',
            icon: IconImageData.xCodeIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'eclipse',
            icon: IconImageData.ecilpseIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Google Colab',
            icon: IconImageData.googleColabIcon,
          ),
        ],
      ),
      showTextWidget(
        context: context,
        text: "Tools",
        weight: FontWeight.bold,
        fontSize: 22,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          showIconWidget(
            context: context,
            iconName: 'Slack',
            icon: IconImageData.slackIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Miro',
            icon: IconImageData.miroIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Notion',
            icon: IconImageData.notionIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Figma',
            icon: IconImageData.figmaIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Fork',
            icon: IconImageData.forkIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Git',
            icon: IconImageData.gitIcon,
          ),
          showIconWidget(
            context: context,
            iconName: 'Github',
            icon: IconImageData.githubIcon,
          ),
        ],
      )
    ],
  );
}
