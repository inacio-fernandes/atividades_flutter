class Animal {
  int id;
  String nome;
  String cor;

  Animal(this.id, this.nome, this.cor);
}

class Cat extends Animal {
  String som;

  Cat(int id, String nome, String cor, this.som) : super(id, nome, cor);

  void detalhes() {
    print("id-$id, nome-$nome, cor-$cor, som-$som");
  }
}

void main() {
  Cat gato = Cat(1, "garfield", "amarelo", "Miau");
  gato.detalhes();
}
