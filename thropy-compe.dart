// The main function initializes lists of scores
void main() {
  final List<int> lumbaLumbaScores = [96, 108, 89];
  final List<int> koalaScores = [88, 91, 110];

  final List<int> bonus1LumbaLumbaScores = [97, 112, 101];
  final List<int> bonus1KoalaScores = [109, 95, 123];

  final List<int> bonus2LumbaLumbaScores = [97, 112, 101];
  final List<int> bonus2KoalaScores = [109, 95, 106];

  printResults(lumbaLumbaScores, koalaScores);
  printResults(bonus1LumbaLumbaScores, bonus1KoalaScores);
  printResults(bonus2LumbaLumbaScores, bonus2KoalaScores);
}

// Function to print the results of lumbaLumbaScores and koalaScores comparison.
void printResults(List<int> lumbaLumbaScores, List<int> koalaScores) {
  final double lumbaLumbaAverage = calculateAverage(lumbaLumbaScores);
  final double koalaAverage = calculateAverage(koalaScores);

  final String result = determineWinner(lumbaLumbaAverage, koalaAverage);
  print(result);
}

// Calculates the average of a list of integer scores.
double calculateAverage(List<int> scores) {
  return scores.fold<double>(0, (sum, score) => sum + score) / scores.length;
}

// Determines the winner based on the average scores of the lumba-lumba and koala teams. Takes in two double parameters representing the average scores of the two teams and returns a string indicating the winner or a tie, or a message if there is no winner.
String determineWinner(double lumbaLumbaAverage, double koalaAverage) {
  if (lumbaLumbaAverage > koalaAverage && lumbaLumbaAverage >= 100) {
    return 'Tim Lumba-lumba memenangkan trofi!';
  } else if (koalaAverage > lumbaLumbaAverage && koalaAverage >= 100) {
    return 'Tim Koala memenangkan trofi!';
  } else if (lumbaLumbaAverage == koalaAverage && lumbaLumbaAverage >= 100) {
    return 'Hasil seri!';
  } else {
    return 'Tidak ada pemenang.';
  }
}
