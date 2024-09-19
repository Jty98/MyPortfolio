import 'package:flutter/material.dart';
import 'package:my_portfolio_web/model/profile_text.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyProfileView extends StatelessWidget {
  final ProfileText profileText;
  const MyProfileView({super.key, required this.profileText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Icon(
            profileText.icon,
            size: ResponsiveValue(
              context,
              defaultValue: 16.0, // double 값으로만 줘야됨
              conditionalValues: [
                Condition.largerThan(
                  value: 16.0,
                  name: MOBILE,
                ),
                Condition.largerThan(
                  value: 16.0,
                  name: TABLET,
                ),
              ],
            ).value,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        Text(
          profileText.content,
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
            fontWeight: FontWeight.w500,
            fontSize: ResponsiveValue(
              context,
              defaultValue: 16.0, // double 값으로만 줘야됨
              conditionalValues: [
                Condition.largerThan(
                  value: 16.0,
                  name: MOBILE,
                ),
                Condition.largerThan(
                  value: 16.0,
                  name: TABLET,
                ),
              ],
            ).value,
          ),
        ),
      ],
    );
  }
}
