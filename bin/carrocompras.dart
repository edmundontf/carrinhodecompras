import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;

  while (condicao) {
    print("Digite um produto para adicionar ao carrinho");
    String texto = stdin.readLineSync() ?? "";
    if (texto == 'sair') {
      print('tem certeza q deseja finalizar sua compra?');
      String op = stdin.readLineSync() ?? "";
      if (op == 'sim') {
        condicao = false;
        print("Você saiu!");
      }
    } else if (texto == 'remover') {
      print("Qual o produto você deseja remover?");
      print("carrinho: $produtos");
      produtos.remove(texto = stdin.readLineSync() ?? "");
    } else {
      produtos.add(texto);
    }
    print("carrinho: $produtos");
  }
}
