import 'package:flutter/material.dart';
import 'package:my_portfolio_web/Components/icon_widget.dart';
import 'package:my_portfolio_web/Components/text_widget.dart';
import 'package:my_portfolio_web/VM/resonse_size.dart';
import 'package:my_portfolio_web/model/skills_text.dart';

/// skill 항목들 뷰
Widget mySkillsView({required BuildContext context}) {
  TextWidget textWidget = TextWidget();
  ResponseSize responseSize = ResponseSize();
  List<SkillsText> languagueText = SkillsText.languagueText;
  List<SkillsText> frameworkText = SkillsText.frameworkText;
  List<SkillsText> databaseText = SkillsText.databaseText;
  List<SkillsText> ideText = SkillsText.ideText;
  List<SkillsText> toolText = SkillsText.toolText;

  return Container(
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.secondaryContainer,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          textWidget.showTextWidget(
            context: context,
            text: "Languague",
            weight: FontWeight.bold,
            fontColor: Theme.of(context).colorScheme.onBackground,
            fontSize: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: languagueText
                .map((lText) => IconWidget(skillsText: lText))
                .toList(),
          ),
          textWidget.showTextWidget(
            context: context,
            text: "Framework & Server",
            weight: FontWeight.bold,
            fontColor: Theme.of(context).colorScheme.onBackground,
            fontSize: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: frameworkText
                .map((fText) => IconWidget(skillsText: fText))
                .toList(),
          ),
          textWidget.showTextWidget(
            context: context,
            text: "Database",
            weight: FontWeight.bold,
            fontColor: Theme.of(context).colorScheme.onBackground,
            fontSize: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: databaseText
                .map((dText) => IconWidget(skillsText: dText))
                .toList(),
          ),
          textWidget.showTextWidget(
            context: context,
            text: "IDE",
            weight: FontWeight.bold,
            fontColor: Theme.of(context).colorScheme.onBackground,
            fontSize: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                ideText.map((iText) => IconWidget(skillsText: iText)).toList(),
          ),
          textWidget.showTextWidget(
            context: context,
            text: "Tools",
            weight: FontWeight.bold,
            fontColor: Theme.of(context).colorScheme.onBackground,
            fontSize: 22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
                toolText.map((tText) => IconWidget(skillsText: tText)).toList(),
          ),
        ],
      ),
    ),
  );
}
