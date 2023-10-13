import 'package:flutter/material.dart';
import 'package:flutter_pattern_study_d5354/src/mvc/views/mvc_view.dart';
import 'package:flutter_pattern_study_d5354/src/mvvm/views/mvvm_view.dart';
import 'package:flutter_pattern_study_d5354/src/mvvm_getx/mvvm_getx_controller.dart';
import 'package:flutter_pattern_study_d5354/src/mvvm_getx/mvvm_getx_view.dart';
import 'package:flutter_pattern_study_d5354/src/normal/normal_view.dart';
import 'package:get/get.dart';

/*
main에서 바로 넘어오는 시작 페이지 역할.
여러
*/

class PatternHome extends StatelessWidget {
  const PatternHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 패턴이 없는 경우
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NormalView()));
                },
                child: const Text('NO PATTERN')),
            const SizedBox(height: 10),
            // mvc 패턴
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MVCView()));
                },
                child: const Text('MVC PATTERN')),
            const SizedBox(height: 10),
            // mvvm 패턴
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MVVMView()));
                },
                child: const Text('MVVM PATTERN')),
            // const SizedBox(height: 10),
            // mvvm + provider의 경우 provider를 써본 적이 없어서 생략함
            const SizedBox(height: 10),
            // mvvm + GetX 사용한 패턴
            ElevatedButton(
                onPressed: () {
                  // Get.to 방식으로 라우팅 처리
                  // BindingBuilder 통해서 controller 등록
                  Get.to(MVVMGetxView(), binding: BindingsBuilder(
                    () {
                      Get.put(MVVMGetxController());
                    },
                  ));
                },
                child: const Text('MVVM GETX PATTERN')),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}