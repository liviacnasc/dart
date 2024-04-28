int score([String? word]){
    if(word == null){
      return 0;
    }
    int totalScore = 0;
    Map<String, int> letters = {
      "aeioulnrst": 1,
      "dg": 2,
      "bcmp": 3,
      "fhvwy": 4,
      "k": 5,
      "jx": 8,
      "qz": 10
      };
    word.toLowerCase().split('').forEach((element) {
      for(var item in letters.entries){
        if(item.key.contains(element)){
          totalScore += item.value;
          break;
        }
      }
    });
    return totalScore;
}