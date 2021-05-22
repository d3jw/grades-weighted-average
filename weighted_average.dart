enum Grades {
  a,
  b,
  c,
  d,
  e,
}
void main() {
  final gradesCount = <Grades, int>{
    Grades.a: 5,
    Grades.b: 4,
    Grades.c: 9,
    Grades.d: 7,
    Grades.e: 8,
  };

  final gradesCountWithThesisAndLastExam = <Grades, int>{
    Grades.a: 5,
    Grades.b: 5,
    Grades.c: 10,
    Grades.d: 8,
    Grades.e: 8,
  };

  calculateWeightedAAverage(gradesCount);

  calculateWeightedAAverage(gradesCountWithThesisAndLastExam);
}

void calculateWeightedAAverage(Map<Grades, int> gradesCounts) {
  final gradeWeights = <Grades, double>{
    Grades.a: 1.0,
    Grades.b: 1.5,
    Grades.c: 2.0,
    Grades.d: 2.5,
    Grades.e: 3.0,
  };
  var a = 0.0, b = 0.0, c = 0.0, d = 0.0, e = 0.0;

  var divisor = 0;

  for (var entry in gradesCounts.entries) {
    divisor += entry.value.toInt();
    switch (entry.key) {
      case Grades.a:
        a += (entry.value * gradeWeights[Grades.a]!);
        break;
      case Grades.b:
        b += (entry.value * gradeWeights[Grades.b]!);
        break;
      case Grades.c:
        c += (entry.value * gradeWeights[Grades.c]!);
        break;
      case Grades.d:
        d += (entry.value * gradeWeights[Grades.d]!);
        break;
      case Grades.e:
        e += (entry.value * gradeWeights[Grades.e]!);
        break;
    }
  }

  final sum = a + b + c + d + e;

  final average = sum / divisor;

  print('Sum $sum, Count of grades $divisor, Weighted average $average');
}
