import 'package:flutter/material.dart';

/// Icon들을 불러오는 위젯 함수
/// @@@ Prams: BuildContext context: color설정시 context를 알기 위해
/// @@@ Prams: String iconName: icon들의 이름
/// @@@ Prams: String icon: icon데이터 정보
showIconWidget({required BuildContext context, required String iconName, required Icon icon}) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 0.5, color: Theme.of(context).colorScheme.onSecondary)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(height: 10,),
          Text(iconName,
          style: TextStyle(color: Theme.of(context).colorScheme.onSecondary, fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ],
      ),
    ),
  );
}
