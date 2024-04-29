import 'dart:math';

class DifferenceOfSquares {

  int differenceOfSquares(int number){
    return squareOfSum(number) - sumOfSquares(number);
  }
  int sumOfSquares(int number){
    int result = 0;
    for(int i = 1; i <= number; i++){
      result += pow(i, 2).toInt();
    }
    return result;
  }
  int squareOfSum(int number){
    int result = 0;
    for(int i = 1; i <= number; i++){
      result += i;
    }
    return pow(result, 2).toInt();
  }
}
