
import 'package:flutter/material.dart';
import 'package:flutter_pattern_study_d5354/src/mvc/controller/mvc_controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

// 화면 담당
class MVCView extends StatefulWidget {
  MVCView({Key? key}) : super(key: key);

  @override
  State createState() => _MVCViewState();
}

// 기존 모델 사용 안하던거에 비해 살짝 mvc 라이브러리를 사용
class _MVCViewState extends StateMVC<MVCView> {
  _MVCViewState() : super(MVCController()) {
    con = controller as MVCController;
  }

  // 생성한 컨트롤러를 클래스 내부 변수로 받음
  late MVCController con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVC 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(con.model.counter.toString(), style: TextStyle(fontSize: 150)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        con.incrementCounter();
                      },
                      child: const Text('+')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        con.decreamentCounter();
                      },
                      child: const Text('-')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}