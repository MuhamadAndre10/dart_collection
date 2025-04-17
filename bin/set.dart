import 'dart:collection';

void main(List<String> args) {
  final set = <String>{}; // sama seperti LinkedHashSet<String>()
  // final set = LinkedHashSet<String>(); // sama seperti <String>{}

  set.addAll({"Andre", "Ari", "Andi"}); // menambah data ke dalam set
  print(set); // Output: {Andre, Ari, Andi}

  // * hashSet implementasi lain dari set
  final hashSet = HashSet<String>();
  hashSet.addAll({"Budi1", "Budi2", "Budi3"});

  print(hashSet); // {Budi3, Budi2, Budi1}

  // perbedaanya hashSet dengan LinkedHasSet
  // 1. HashSet lebih cepat dalam proses insert

  // * unmodifiableSet adalah set yang tidak bisa di ubah
  final set2 = <int>{1, 2, 3, 4, 5};
  final unmodifiable = UnmodifiableSetView(set2);

  // unmodifiable.add(123); // error: UnmodifiableSetView.add
  // unmodifiable.remove(123); // error: UnmodifiableSetView.remove

  print(unmodifiable); // Output: {1, 2, 3, 4, 5}
}
