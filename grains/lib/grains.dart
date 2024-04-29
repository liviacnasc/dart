BigInt square(final int n) {
  if(n < 1 || n > 64){
    throw ArgumentError("square must be between 1 and 64");
  }
  return BigInt.from(2).pow((n - 1));
}

BigInt total() {
  BigInt result = BigInt.from(0);
  for(int i = 1; i <= 64; i++){
    result += square(i);
  }
  return result;
}
