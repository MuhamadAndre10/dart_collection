// comparator adalah cara kita mengubah atau memodifikasi cara pengurutan datanya

import 'dart:collection';

void main(List<String> args) {
  final treeSet = SplayTreeSet<int>((first, second) => second.compareTo(first));

  treeSet.addAll([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  print(treeSet); // Output: {10, 9, 8, 7, 6, 5, 4, 3, 2, 1}
}
