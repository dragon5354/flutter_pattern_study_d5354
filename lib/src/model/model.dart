/*
mvc, mvvm 등에서 공통적으로 사용하는 모델
*/
class Model {
  int _count = 0;

  int get counter => _count;
  int incrementCounter() => ++_count;
  int decrementCounter() => --_count;
}