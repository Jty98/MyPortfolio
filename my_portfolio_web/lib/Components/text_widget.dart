/*
  Description: Text와 관련된 중복되는 위젯들
*/

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// 중복되는 텍스트 위젯
Widget showTextWidget({
  required BuildContext context,
  required String text,
  required FontWeight weight,
  required double fontSize,
}) {
  return Text(
    text,
    textAlign: TextAlign.center,
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

/// 자기 소개 중에서 텍스트를 담당하는 함수
Widget shoeProfileText({
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

/// Divider 위젯
Widget showDivider({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Divider(
      color: Theme.of(context).colorScheme.onSecondary,
      height: 2.0,
    ),
  );
}

/// Title 위젯
Widget sohwTitelsWidget({required BuildContext context, required double borderSize, required IconData icon, required String text}) {
  return Container(
    width: borderSize,
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onTertiary,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 3, color: const Color.fromARGB(255, 6, 46, 7),)
        ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(icon,
        color: Theme.of(context).colorScheme.tertiary,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.tertiary,
              ),
        ),
      ],
    ),
  );
}
