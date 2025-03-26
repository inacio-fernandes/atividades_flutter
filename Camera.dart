class Camera {
  int _id;
  String _marca;
  String _cor;
  double _preco;

  Camera(this._id, this._marca, this._cor, this._preco);

  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;

  set id(int id) => _id = id;
  set marca(String marca) => _marca = marca;
  set cor(String cor) => _cor = cor;
  set preco(double preco) => _preco = preco;

  void detalhes() {
    print("id- $_id, marca- $_marca, cor- $_cor, preco- $_preco");
  }
}

void main() {
  Camera cam1 = Camera(1, "sigma", "azul", 3000.0);
  Camera cam2 = Camera(2, "canon", "preto", 2500.0);
  Camera cam3 = Camera(3, "ursa", "roxo", 3500.0);

  cam1.detalhes();
  cam2.detalhes();
  cam3.detalhes();
}
