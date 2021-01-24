class AgeCalculator {
  static int age;

  AgeCalculator({int p}) {
    int birthYear = p;
    age = DateTime.now().year - birthYear;
    print("$age");
  }
}
