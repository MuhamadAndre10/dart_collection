import 'dart:collection';
import 'dart:math';

void main(List<String> args) {
  // LinkedHashMap = secara default map menggunakan LinkedHashMap yang menggunakan double Linked List
  final Map<String, String> bio = {
    "name": "Muhamad",
    "age": "23",
    "address": "Bandung",
  };

  // map entry, jika ingin mengiterable data map.
  for (var e in bio.entries) {
    print('Key: ${e.key}, Value: ${e.value}');
  }

  // HashMap seperti map tetapi dia menggunakan Hash Linked List
  final score = HashMap<String, int>();

  score["Andre"] = 100;
  score["Ari"] = 200;
  score["Andi"] = 50;

  print(score); // hasilnya tidak berurutan.
}
