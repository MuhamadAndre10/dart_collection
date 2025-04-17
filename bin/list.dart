void main(List<String> args) {
  // * List Growable
  var dataList = <String>[];

  dataList.add("Andre");
  dataList.add("Ari");
  dataList.add("Andi");
  print(dataList);

  // * List Fix | list yang di tentukan length isinya
  final list = List<int>.filled(10, 0, growable: false);

  print(list); // Output : [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  // cannot add but can update
  list[0] = 1;
  list[1] = 2;
  print(list); // Output: [1, 2, 0, 0, 0, 0, 0, 0, 0, 0]

  // * List UnmofiableList
  final numbers = <int>[1, 2, 3, 4, 5];

  // make list number unmodified || mengubah data list agar tidak bisa di ubah
  // unmodifiableList adalah list yang tidak bisa di ubah
  final unmodifiableList = List.unmodifiable(numbers);

  unmodifiableList.add(123); // error

  print(unmodifiableList); // Output: [1, 2, 3, 4, 5]
}
