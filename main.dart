import 'classes/produto.dart'; // Import Produto class

void main() {
  // Criando objeto Produto
  final produto = Produto('Colônia Floratta Flores Secretas 75ml', 49.90, 2);

  // Realizando vendas e verificando estoque
  produto
      .realizarVenda(); // Compra de um(a) produto Camisa realizada com sucesso! /n Quantidade em estoque: 1
  produto
      .realizarVenda(); // Compra de um(a) produto Camisa realizada com sucesso! /n Quantidade em estoque: 0
  produto
      .realizarVenda(); // No momento não possuímos o produto Colônia Floratta Flores Secretas 75ml em estoque.
}
