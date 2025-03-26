class House {
  int id;
  String nome;
  double preco;

  House(this.id, this.nome, this.preco);
}

void main() {
  House house1 = House(1, "Casa na arvore", 100000.0);
  House house2 = House(2, "Casa automatica", 700000.0);
  House house3 = House(3, "Casa caverna", 400000.0);


  List<House> houses = [house1, house2, house3];

  for (var house in houses) {
    print("House: id-${house.id}, nome-${house.nome}, preco-${house.preco}");
  }
}
