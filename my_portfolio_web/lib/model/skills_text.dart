import 'package:flutter/material.dart';
import 'package:my_portfolio_web/utils/icon_image_data.dart';

class SkillsText {
  final String iconName;
  final Icon icon;

  SkillsText({required this.iconName, required this.icon});

  static final languagueText = [
    SkillsText(
      iconName: 'Dart',
      icon: IconImageData.dartIcon,
    ),
    SkillsText(
      iconName: 'Python',
      icon: IconImageData.pythonIcon,
    ),
    SkillsText(
      iconName: 'R',
      icon: IconImageData.rIcon,
    ),
    SkillsText(
      iconName: 'Java',
      icon: IconImageData.javaIcon,
    ),
    SkillsText(
      iconName: 'Swift',
      icon: IconImageData.swiftIcon,
    ),
    SkillsText(
      iconName: 'JavaScript',
      icon: IconImageData.javaScriptIcon,
    ),
  ];

  static final frameworkText = [
    SkillsText(
      iconName: 'Flutter',
      icon: IconImageData.flutterIcon,
    ),
    SkillsText(
      iconName: 'UIKit',
      icon: IconImageData.uiKitIcon,
    ),
    SkillsText(
      iconName: 'MyBatis',
      icon: IconImageData.mybatisIcon,
    ),
    SkillsText(
      iconName: 'FastAPI',
      icon: IconImageData.fastApiIcon,
    ),
    SkillsText(
      iconName: 'Flask',
      icon: IconImageData.flaskIcon,
    ),
    SkillsText(
      iconName: 'Spring Boot',
      icon: IconImageData.springIcon,
    ),
    SkillsText(
      iconName: 'Apache Tomcat',
      icon: IconImageData.apacheTomcatIcon,
    ),
  ];

  static final databaseText = [
    SkillsText(
      iconName: 'MySQL',
      icon: IconImageData.mySQLIcon,
    ),
    SkillsText(
      iconName: 'SQLite',
      icon: IconImageData.sqliteIcon,
    ),
    SkillsText(
      iconName: 'Firebase',
      icon: IconImageData.firebaseIcon,
    ),
  ];

  static final ideText = [
    SkillsText(
      iconName: 'VSCode',
      icon: IconImageData.vsCodeIcon,
    ),
    SkillsText(
      iconName: 'XCode',
      icon: IconImageData.xCodeIcon,
    ),
    SkillsText(
      iconName: 'eclipse',
      icon: IconImageData.ecilpseIcon,
    ),
    SkillsText(
      iconName: 'Google Colab',
      icon: IconImageData.googleColabIcon,
    ),
  ];

  static final toolText = [
    SkillsText(
      iconName: 'Slack',
      icon: IconImageData.slackIcon,
    ),
    SkillsText(
      iconName: 'Miro',
      icon: IconImageData.miroIcon,
    ),
    SkillsText(
      iconName: 'Notion',
      icon: IconImageData.notionIcon,
    ),
    SkillsText(
      iconName: 'Figma',
      icon: IconImageData.figmaIcon,
    ),
    SkillsText(
      iconName: 'Fork',
      icon: IconImageData.forkIcon,
    ),
    SkillsText(
      iconName: 'Git',
      icon: IconImageData.gitIcon
    ),
    SkillsText(
      iconName: 'Github',
      icon: IconImageData.githubIcon,
    ),
  ];
}
