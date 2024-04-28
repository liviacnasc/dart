import 'dart:math';

class ArmstrongNumbers {
  // [NOTE] can't handle big values.

  bool isArmstrongNumber(String input){
    BigInt number = BigInt.parse(input);
    int digits = input.length;
    BigInt result = BigInt.zero;

    input.split('').forEach((element) {
      result += BigInt.from(pow(int.parse(element), digits));
    });
    
    print(result);
    return result == number;
  }
}
