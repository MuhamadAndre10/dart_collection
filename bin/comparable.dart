import 'dart:collection';

// Comparable adalah interface atau sebuah kontrak yang digunakan untuk membuat tipe data  yang bisa di urutkan
// String, int, boolean, merupakan implement comparable.

class Category implements Comparable<Category> {
  String id;
  String name;

  Category(this.id, this.name);

  @override
  int compareTo(Category other) {
    return id.compareTo(other.id);
  }

  @override
  String toString() {
    return 'Category{id: $id, name: $name}';
  }
}

void main(List<String> args) {
  // SplayTreeSet adalah implementasi dari TreeSet yang di gunakan untuk menyimpan data yang sudah terurut

  final treeSet = SplayTreeSet<Category>();

  treeSet.add(Category("2", "Category 2"));
  treeSet.add(Category("1", "Category 1"));
  treeSet.add(Category("3", "Category 3"));

  // error: The argument type 'Category' can't be assigned to the parameter type 'Comparable<Category>'.
  print(treeSet.toString());
  // Output: {Category{id: 1, name: Category 1}, Category{id: 2, name: Category 2}, Category{id: 3, name: Category 3}}
}
