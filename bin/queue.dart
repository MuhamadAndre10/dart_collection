// Queue merupakan konsep antrian dalam dart.
// Queue menyimpan data dengan cara FIFO (First In First Out)

// Queue adalah implementasi dari List yang di gunakan untuk menyimpan data yang sudah terurut

import 'dart:collection';

void main(List<String> args) {
  final q = Queue<String>();

  q.addAll(["Andre", "Ari", "Andi"]);

  print(q); // Output: (Andre, Ari, Andi)
  print(q.first); // Output: Andre

  q.addLast("Budi"); // menambah data di akhir queue
  print(q); // Output: (Andre, Ari, Andi, Budi)

  print(q.removeFirst()); // Output: Andre
  print(q); // Output: (Ari, Andi, Budi)
  print(q.removeLast()); // Output: Budi
  print(q); // Output: (Ari, Andi)
}
