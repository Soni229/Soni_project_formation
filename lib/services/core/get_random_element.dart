import "dart:math";

String getRandomElement(List<String> list) {
  final random = Random();
  int i = random.nextInt(list.length);
  return list[i];
}
