void main(List<String> args) {
  final List<String> list = ['a', 'b', 'c', 'd', 'e'];

  for (var data in list) {
    print(data);
  }

  final iterator = list.iterator;

  // moveNext() return bool. cek data selanjutnya. true jika ada false jika tidak ada.
  while (iterator.moveNext()) {
    print(iterator.current);
  }
}
