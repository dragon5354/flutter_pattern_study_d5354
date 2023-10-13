
import 'package:flutter/material.dart';
import 'package:flutter_pattern_study_d5354/src/mvvm_getx/mvvm_getx_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// GetView로 controller를 바로 접근할 수 있도록 함
class MVVMGetxView extends GetView<MVVMGetxController> {
  const MVVMGetxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MVVM + GetX 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // obx(반응형) 방식으로 해당 부분만 값이 바뀔 때 리로딩되게 함
            Obx(
              () => Text(controller.count.toString(),
                  style: TextStyle(fontSize: 150)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        controller.incrementCounter();
                      },
                      child: const Text('+')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        controller.decreamentCounter();
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