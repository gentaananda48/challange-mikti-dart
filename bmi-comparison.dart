/// Calculates the BMI comparison between two individuals based on their mass and height.
///
/// The function takes four parameters: `markMass` (double) representing the mass of Mark,
/// `markHeight` (double) representing the height of Mark, `johnMass` (double) representing the mass of John,
/// and `johnHeight` (double) representing the height of John.
///
/// The function calculates the BMI (Body Mass Index) of Mark and John using the provided mass and height values.
/// It then compares the BMI values to determine which individual has a higher BMI.
///
/// Finally, the function prints the BMI values of Mark and John, as well as a boolean value indicating whether
/// Mark has a higher BMI than John.
void calculateAndDisplayBMIComparison(
    double markMass, double markHeight, double johnMass, double johnHeight) {
  double calculateBMI(double mass, double height) {
    return mass / (height * height);
  }

  double markBMI = calculateBMI(markMass, markHeight);
  double johnBMI = calculateBMI(johnMass, johnHeight);

  bool markHigherBMI = markBMI > johnBMI;

  print('BMI Mark: $markBMI');
  print('BMI John: $johnBMI');
  print('Mark has a higher BMI than John: $markHigherBMI');
}

/// Calculates and displays the BMI comparison between two sets of values.
///
/// The function takes four parameters: [weight1] and [height1] represent the
/// first set of values, and [weight2] and [height2] represent the second set of
/// values.
///
/// This function does not return any value.
void main() {
  calculateAndDisplayBMIComparison(78, 1.69, 92, 1.95);

  print('\n');

  calculateAndDisplayBMIComparison(95, 1.88, 85, 1.76);
}
