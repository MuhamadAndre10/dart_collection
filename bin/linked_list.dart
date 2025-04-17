// LinkedList berbeda dengan list.
// perbedaanya bisa di liat di youtube pzn (dart collection)

import 'dart:collection';

base class StringEntry extends LinkedListEntry<StringEntry> {
  String value;

  StringEntry(this.value);
}

void main(List<String> args) {
  // create a linked list
  final linkedLIst = LinkedList<StringEntry>();

  // use AddAll method
  linkedLIst.addAll([
    StringEntry('Andre'),
    StringEntry('Ari'),
    StringEntry('Andi'),
  ]);

  for (var element in linkedLIst) {
    print(element.value);
  }
}
