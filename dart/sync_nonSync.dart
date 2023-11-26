void main() {
  /// 비동기 프로그래밍
  /// 동기성 / 비동기성
  /// 동기 : 모든 코드가 순차적으로 진행되는 형태
  /// 비동기 : 코드가 동시다발적으로 실행되서, 순차적으로 보장을 할 수 없는 형태
  ///
  /// async / await / Future :  1회만 응답을 돌려 받을 경우 (서버와 통신 할때 많이 사용)

  Future<void> todo(int second) async {
    print('$second 후에 동작합니다.');
    await Future.delayed(Duration(seconds: second));
    print('Todo Done in $second seconds');
  }

  todo(3);
  todo(1);
  todo(5);

  /// async* / yield / Stream : 지속적으로 응답을 돌려 받을 경우

  Stream<int> todo2() async* {
    int counter = 0;

    while(counter <= 10) {
      counter++;
      await Future.delayed(Duration(seconds: 1));
      print('Todo is Running $counter');
      yield counter;  // return 처럼 전달하다.
    }

    print('Todo is Done');
  }

  todo2().listen((event) { });

}