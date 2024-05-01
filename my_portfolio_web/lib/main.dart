import 'package:flutter/material.dart';
import 'package:my_portfolio_web/home.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system; // 기본 세팅 모드

  _changeThemeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    setState(() {});
  }

  // static const seedColor = Color.fromARGB(255, 249, 255, 255);
  static const seedColor = Colors.lightGreen;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          // breakpoints 에서 크기가 바뀔 때 신호를 주게됨
          // 스마트폰 화면사이즈부터 4K까지 정의해주기
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      title: 'MyPortfolioWeb',
      themeMode: _themeMode,
      theme: ThemeData(
        colorSchemeSeed: seedColor,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: seedColor,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: Home(onChangeTheme: _changeThemeMode),
      debugShowCheckedModeBanner: false,
    );
  }
}
