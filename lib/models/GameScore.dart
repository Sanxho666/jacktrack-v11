class GameScore {
  final String playerId;
  final List<int> holeScores;
  final DateTime date;

  GameScore({
    required this.playerId,
    required this.holeScores,
    required this.date,
  });

  int get total => holeScores.fold(0, (sum, score) => sum + score);
}