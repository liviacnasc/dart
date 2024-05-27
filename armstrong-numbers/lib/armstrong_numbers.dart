class ArmstrongNumbers {

  bool isArmstrongNumber(String input){
    BigInt number = BigInt.parse(input);
    int digits = input.length;
    BigInt result = BigInt.zero;

    input.split('').forEach((element) {
      result += BigInt.parse(element).pow(digits);
    });
    
    return result == number;
  }
}
