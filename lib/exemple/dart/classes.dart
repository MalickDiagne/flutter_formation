class Person {
  String name = '';
  int age = 0;

  // Constructeur
  Person(this.name, this.age);

  // Méthode
  void sayHello() {
    print('Bonjour, je m\'appelle $name et j\'ai $age ans.');
  }
}

void main() {
  // Création d'objets
  var person1 = Person('Alice', 25);
  var person2 = Person('Bob', 30);

  // Utilisation de méthodes et de propriétés d'objets
  person1.sayHello();
  person2.sayHello();
}
