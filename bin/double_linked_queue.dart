// DoubleLinkedQueue merupakan konsep yang sama dengan queue  dalam dart.
// DoubleLinkedQueue merupakan implementasi dari Queue dengan struktur data Double Linked List
// lebih cepat untuk modifikasi data di awal dan akhir. cocok untuk queue dan stack.

// Queue adalah implementasi dari List yang di gunakan untuk menyimpan data yang sudah terurut

import 'dart:collection';

void main(List<String> args) {
  // use DoubleLinkedQueue
  final q = DoubleLinkedQueue<String>();

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
