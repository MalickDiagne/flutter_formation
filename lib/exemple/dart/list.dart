void main() {
  // Liste
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Premier élément : ${numbers[0]}');
  numbers.add(6);
  numbers.remove(3);

  // Map
  Map<String, int> scores = {'John': 95, 'Alice': 87, 'Bob': 78};
  print('Score de John : ${scores['John']}');
  scores['Eve'] = 92;
  scores.remove('Alice');
}
