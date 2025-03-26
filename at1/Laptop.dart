class Laptop {
  int id;
  String nome;
  int ram;


  Laptop(this.id, this.nome, this.ram);
}

void main() {
  Laptop laptop1 = Laptop(1, "Dell", 12);
  Laptop laptop2 = Laptop(2, "MacBook ", 8);
  Laptop laptop3 = Laptop(3, "Lenovo", 4);


  print(
    "Laptop 1: id-${laptop1.id}, nome-${laptop1.nome}, ram-${laptop1.ram}GB",
  );
  print(
    "Laptop 2: id-${laptop2.id}, nome-${laptop2.nome}, ram-${laptop2.ram}GB",
  );
  print(
    "Laptop 3: id-${laptop3.id}, nome-${laptop3.nome}, ram-${laptop3.ram}GB",
  );
}
