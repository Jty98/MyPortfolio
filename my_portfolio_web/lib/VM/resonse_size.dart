import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponseSize {
  double? resizeValue({required BuildContext context, required double defaultValue, required double mobileValue, required double tabletValue}) {
    return ResponsiveValue(
      context,
      defaultValue: defaultValue,
      conditionalValues: [
        Condition.largerThan(
          value: mobileValue,
          name: MOBILE,
        ),
        Condition.largerThan(
          value: tabletValue,
          name: TABLET,
        ),
      ],
    ).value;
  }
}
