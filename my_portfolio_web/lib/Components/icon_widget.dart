import 'package:flutter/material.dart';
import 'package:my_portfolio_web/VM/resonse_size.dart';
import 'package:my_portfolio_web/model/skills_text.dart';

/// Icon들을 불러오는 위젯 함수
/// @@@ Prams: BuildContext context: color설정시 context를 알기 위해
class IconWidget extends StatelessWidget {
  final SkillsText skillsText;
  const IconWidget({super.key, required this.skillsText});

  @override
  Widget build(BuildContext context) {
    ResponseSize responseSize = ResponseSize();

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: responseSize.resizeValue(
          context: context,
          defaultValue: 90.0,
          mobileValue: 50.0,
          tabletValue: 90.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 0.5,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              skillsText.icon,
              const SizedBox(
                height: 10,
              ),
              Text(
                skillsText.iconName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                  fontSize: responseSize.resizeValue(
                    context: context,
                    defaultValue: 10.0,
                    mobileValue: 7.0,
                    tabletValue: 10.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
