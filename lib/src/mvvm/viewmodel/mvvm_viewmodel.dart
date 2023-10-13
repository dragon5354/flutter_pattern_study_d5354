import 'dart:async';
import 'package:flutter_pattern_study_d5354/src/model/model.dart';


class MvvmViewModel {
  // 모델
  late Model _model;
  StreamController<Model> controller = StreamController<Model>();
  // mvvmStream에 변화된 모델을 넣어주면 감지해서 화면을 다시 그린다
  Stream<Model> get mvvmStream => controller.stream;

  // 모델이 뷰모델 생성시 객체 생성
  MvvmViewModel() {
    _model = Model();
  }

  // 뷰모델이 해당하는 counter 값들을 받아줌. 여기서의 counter가 바뀌지 않는 한 view에는 문제가 발생하지 않는다.
  // 모델에서 무슨 값이 변경되면 해당 부분에는 문제가 생기겠지만, view에는 전혀 영향을 주지 않음.
  // 개인적으로 중간 구간을 두는 방식으로 나눔으로서 서로를 분리한다고 생각함
  int get count => _model.counter;

  void update() {
    controller.sink.add(_model);
  }

  void incrementCounter() {
    _model.incrementCounter();
    update();
  }

  void decreamentCounter() {
    _model.decrementCounter();
    update();
  }
}