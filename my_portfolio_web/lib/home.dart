import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_web/VM/home_ctrl.dart';
import 'package:my_portfolio_web/utils/const_asset_image.dart';

class Home extends StatelessWidget {
  final Function(ThemeMode) onChangeTheme;
  const Home({super.key, required this.onChangeTheme});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    List<Widget> mode = <Widget>[
      SizedBox(
          width: 40,
          height: 40,
          child: Image.asset(ConstAssetImage.LIGHTMODE_IMAGE)),
      SizedBox(
          width: 40,
          height: 40,
          child: Image.asset(ConstAssetImage.DARKMODE_IMAGE)),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Obx(
                  () => ToggleButtons(
                    onPressed: (index) {
                      homeController.onPressedFunc(index);
                      index == 0
                          ? onChangeTheme(ThemeMode.light)
                          : onChangeTheme(ThemeMode.dark);
                    },
                    isSelected: homeController.selectedMode,
                    selectedColor: Colors.white,
                    fillColor: Colors.blueGrey,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    constraints: const BoxConstraints(
                      minHeight: 60.0,
                      minWidth: 60.0,
                    ),
                    children: mode,
                  ),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        foregroundColor: Theme.of(context).colorScheme.onTertiary,
      ),
    );
  }
  // --- Functions ---
} // End