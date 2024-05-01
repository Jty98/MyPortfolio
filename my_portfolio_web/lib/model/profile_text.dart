// Description: Profile부분의 데이터를 채워넣는 모델

import 'package:flutter/material.dart';

class ProfileText {
  final IconData icon;
  final String content;

  ProfileText({
    required this.icon,
    required this.content,
  });

  static final profileContent = [
    ProfileText(
      icon: Icons.assignment_ind,
      content: "정태영"
    ),
    ProfileText(
      icon: Icons.cake_rounded,
      content: "1998.12.24",
    ),
    ProfileText(
      icon: Icons.house_rounded,
      content: "경기도 수원시 권선구",
    ),
    ProfileText(
      icon: Icons.school_rounded,
      content: "평택대학교 융합소프트웨어학과",
    ),
    ProfileText(
      icon: Icons.email_rounded,
      content: "clclcfnfn@naver.com",
    ),
  ];
}