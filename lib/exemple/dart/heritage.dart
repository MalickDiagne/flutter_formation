class Animal {
  String name = '';

  Animal(this.name);

  void makeSound() {
    print('L\'animal fait un son.');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name aboie.');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name miaule.');
  }
}

void main() {
  List<Animal> animals = [Dog('Buddy'), Cat('Whiskers')];

  for (var animal in animals) {
    animal.makeSound();
  }
}
