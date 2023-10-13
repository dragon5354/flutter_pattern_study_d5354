import 'package:flutter/material.dart';
import 'package:flutter_pattern_study_d5354/src/pattern_home.dart';
import 'package:get/get.dart';

/*
특별한 기능을 하고 있지는 않고, 시작 페이지로 patten_home을 표시해주는 역할만 하고 있음.
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // GetX 사용을 위해서 미리 GetMaterialApp으로 사용
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is
        primarySwatch: Colors.blue,
      ),
      home: const PatternHome(),
    );
  }
}