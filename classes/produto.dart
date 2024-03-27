class Produto {
  final String nome;
  final double valor;

  // Atributos privados com modificador `late`
  late int _qtdEmEstoque;
  late int _qtdVendida;

  Produto(this.nome, this.valor, int qtdEmEstoque) {
    // Validação da quantidade inicial em estoque
    if (qtdEmEstoque < 0) {
      throw ArgumentError('Quantidade em estoque não pode ser negativa.');
    }

    _qtdEmEstoque = qtdEmEstoque;
    _qtdVendida = 0;
  }

  void realizarVenda() {
    if (_qtdEmEstoque < 0) {
      throw ArgumentError('Quantidade inválida.');
    } else if (_qtdEmEstoque == 0) {
      print('No momento não possuímos o produto $nome em estoque.');
    } else {
      _qtdEmEstoque -= 1;
      _qtdVendida += 1;

      print('Compra de um(a) produto $nome realizada com sucesso!');
      print('Quantidade em estoque: $_qtdEmEstoque');
    }
  }

  // Getters para os atributos privados
  int get qtdEmEstoque => _qtdEmEstoque;

  int get qtdVendida => _qtdVendida;
}
