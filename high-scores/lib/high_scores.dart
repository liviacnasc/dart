class HighScores {
  late List<int> scores;
  late List<int> sortedScore;

  HighScores(this.scores){
    this.sortedScore = List<int>.from(scores);
    this.sortedScore.sort();
  }

  int latest(){
    return scores.last;
  }

  List<int> personalTopThree(){
    if(scores.length < 3){
      return sortedScore.reversed.toList();
    }
    return List<int>.generate(3, (index) => sortedScore.reversed.elementAt(index));
  }

  int personalBest(){
    return sortedScore.last;
  }
}
