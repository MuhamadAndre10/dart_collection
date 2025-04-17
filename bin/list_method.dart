void main(List<String> args) {
  final animal = <String>["Cat", "Dog", "Crocodile"];

  animal.insert(2, "Elephant");

  print(animal); // [Cat, Dog, Elephant, Crocodile]

  // * List Operator

  final animal2 = <String>["Fish", "Bird", "Monkey"];

  final combine = animal + animal2;

  print(combine);
}
