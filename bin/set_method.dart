void main(List<String> args) {
  final namesA = <String>{"Muhamad", "Andre", "priyanto"};
  final namesB = {"Muhamad", "Budi", "Nugraha"};

  print(namesA.union(namesB)); // {Muhamad, Andre, priyanto, Budi, Nugraha}
  print(namesA.intersection(namesB)); // {Muhamad}
  print(namesA.difference(namesB)); // {Andre, priyanto}
}
