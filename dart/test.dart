void main() {
  /// 함수 / 메서드
  /// 프로그래밍에서 가장 기본이 되는 단위 중 하나
  /// 동작에 대한 단위
  /// 리턴 타입 함수명(매개변수) {
  /// 함수내 동작할 코드
  /// }
  int num1 = 10;
  int num2 = 20;

  int sum = add(num1, num2);

  print(sum);

  print(divide(num1, num2));

  print(divide2(num1, num2));

  num2 = 0;
  print(divide(num1, num2));
  print(divide2(num1, num2));
}

int add(int num1, int num2) {
  return num1 + num2;
}

double divide(int num1, int num2) {
  return num1 / num2;
}

/// 나머지
int divide2(int num1, int num2) {
  int res = 0;

  try {
    res = num1 ~/ num2;

    // 에러 강제 발생
    throw Exception('Unknown Error');

  } on UnsupportedError catch(error, stack) {
    print('0으로 나눌 수 없습니다.');
  } catch (error, stack) {
    print('에러 : $error');

    print(stack);
  } finally {
    print('결과 : ');
  }

  return res;
}