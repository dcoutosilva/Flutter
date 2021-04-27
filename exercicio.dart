//soma(a, b) {
// print(a + b);
//}
/*
int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}*/

class Produto {
  String nome;
  double preco;
  String condicao;

  Produto(this.nome, this.preco, {this.condicao = 'Novo'});

  //this.condição nomeada
  /*(String nome, double preco) {
    this.nome = nome;
    this.preco = preco;
  }*/
}

main() {
  /*
    // soma(3.2, 4.3);
    final r = exec(2, 3, (a, b) {
      return a * b + 100;
    });
    print('O resultado é $r');*/

  var p1 = Produto('Lapis', 4.26);
  var p2 = Produto('Geladeira', 1490.00);
  // p1.nome = 'Lapis';
//p1.preco = 2.59;

  print('O Produto ${p1.nome} tem preço R\$${p1.preco} e a sua ${p1.condicao}');
  print(
      'O Produto ${p2.nome} tem preço R\$${p2.preco}  e a sua ${p2.condicao}');
}
