
import 'package:flutter/material.dart';
import 'package:flutter_pattern_study_d5354/src/mvvm/viewmodel/mvvm_viewmodel.dart';

class MVVMView extends StatelessWidget {
  MVVMView({Key? key}) : super(key: key);

  MvvmViewModel viewModel = MvvmViewModel();

  // 화면 갱신을 controller가 아니라 view에서 한다.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVVM 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 화면 갱신을 view에서 하기 위해서 StreamBuilder 사용
            StreamBuilder(
                stream: viewModel.mvvmStream,
                builder: ((context, snapshot) {
                  // return 이하 부분만 다시 그림
                  // 값이 바뀌더라도 화면 전체 갱신이 아니라, StreamBuilder 내부 이 부분만 바뀐다.
                  return Text(viewModel.count.toString(),
                      style: const TextStyle(fontSize: 150));
                })),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        viewModel.incrementCounter();
                      },
                      child: const Text('+')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        viewModel.decreamentCounter();
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