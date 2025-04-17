// Selain iterable method terdapat juga iterable properties

void main(List<String> args) {
  final num = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  print(num.length);
  print(num.first); //
  print(num.isEmpty); // check num empty or not value
  // print(num.single); // error, because the value in num > 1
  print(num.reversed.toList());
}
