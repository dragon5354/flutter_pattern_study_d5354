
import 'package:flutter_pattern_study_d5354/src/model/model.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

// 로직을 통해서 화면을 갱신시켜주는 역할 담당
// mvc 문서를 보면 나오는 정해진 양식
// mvc 자체적인 문제로 컨트롤러가 다양한 것을 담당하기에, 크기가 커질 수 있음
class MVCController extends ControllerMVC {
  factory MVCController([StateMVC? state]) => _this ??= MVCController._(state);

  MVCController._(StateMVC? state)
      : model = Model(),
        super(state);

  static MVCController? _this;
  final Model model;

  // 화면 업데이트를 실질적으로 여기서 함
  void update() => setState(() {});

  void incrementCounter() {
    model.incrementCounter();
    update();
  }

  void decreamentCounter() {
    model.decrementCounter();
    update();
  }
}