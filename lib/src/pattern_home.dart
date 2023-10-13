import 'package:flutter/material.dart';
import 'package:flutter_pattern_study_d5354/src/mvc/views/mvc_view.dart';
import 'package:flutter_pattern_study_d5354/src/normal/normal_view.dart';

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
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}