// Membahas tentang iterable method.

import 'dart:math';

void main(List<String> args) {
  // 1. Check Method
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print(numbers.any((element) => element > 5)); // true
  print(numbers.every((element) => element > 5)); // false
  print(numbers.contains(5)); // true

  // 2. Filter Method

  // * fristWhere mengambil data pertama yang sesuai dengan kondisi test
  print(numbers.firstWhere((element) => element % 3 == 0)); // 3
  //  * fristWhere mengambil data pertama yang sesuai dengan kondisi test
  print(numbers.lastWhere((element) => element % 3 == 0)); // 9
  // * singleWhere mengambil data yang sesuai dengan kondisi test, jika lebih dari 1 data yang sesuai maka akan error
  print(numbers.singleWhere((element) => element == 5)); // 5

  // skip dan take
  // * skip mengambil data setelah index yang di tentukan
  print(numbers.skip(5)); // [6, 7, 8, 9, 10]
  // * take mengambil data sebelum index yang di tentukan
  print(numbers.take(5)); // [1, 2, 3, 4, 5]
  // * takeWhile mengambil data sebelum index yang di tentukan dan sesuai dengan kondisi test
  print(numbers.takeWhile((element) => element < 5)); // [1, 2, 3, 4]
  // * skipWhile mengambil data setelah index yang di tentukan dan sesuai dengan kondisi test
  print(numbers.skipWhile((element) => element < 5)); // [5, 6, 7, 8, 9, 10]
  // * where mengambil data yang sesuai dengan kondisi test
  print(numbers.where((element) => element % 2 == 0)); // [2, 4, 6, 8, 10]

  // * Transform Method
  print(numbers.map((e) => e * 2)); // [2, 4, 6, 8, 10, 12, 14, 16, 18, 20])
  print(numbers.join(",")); // 1,2,3,4,5,6,7,8,9,10
  // reduce adalah method yang digunakan untuk mengurangi data menjadi satu data, value adalah data yang sudah di proses sebelumnya, element adalah data yang sedang di proses
  // contoh: reduce(1, 2 => 1 + 2) = 3
  // reduce(3, 3 => 3 + 3) = 6
  // reduce(6, 4 => 6 + 4) = 10
  print(numbers.reduce((value, element) => value + element)); // 55

  print('Reduce ${numbers.fold<int>(0, (value, element) => value + element)}');

  //* convert Method
  final oddNum = [1, 3, 5, 7, 9];

  final oddNumSet = oddNum.toSet();

  print(oddNumSet); // Output: {1, 3, 5, 7, 9}

  // growable : false ? list fix : list can be update;
  // growable default value true
  final oddListSet = oddNumSet.toList(growable: true);
  oddListSet.add(10);
  print(oddListSet);
}
