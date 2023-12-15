import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  RxList<bool> selectedMode = [true].obs; // mode의 선택 여부를 bool값으로 관리

  @override
  void onInit(){
    initSystemMode();
    super.onInit();
  }

  /// 버튼이 눌렸을 때 바뀌는 index를 관리하는 함수
  onPressedFunc(int index) {
    for (int i = 0; i < selectedMode.length; i++) {
      selectedMode[i] = i == index;
    }
    print(index);
  }

  /// 시스템 설정 값이 라이트모드일때와 다크모드 일때의 초기 버튼 선택값을 다르게 하기위한 함수
  initSystemMode() {
    ThemeMode themeMode = ThemeMode.system; // 기본 세팅 모드
    if (themeMode == ThemeMode.light) {
      selectedMode.clear();
      selectedMode.add(true);
      selectedMode.add(false);
    } else {
      selectedMode.clear();
      selectedMode.add(false);
      selectedMode.add(true);
    }
  }

}
