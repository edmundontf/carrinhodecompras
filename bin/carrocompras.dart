import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;

  while (condicao) {
    print("=== Digite um produto para adicionar ou digite remover | sair ===");
    String texto = stdin.readLineSync() ?? "";
    if (texto == 'sair') {
      sair(condicao, texto);
      condicao = false;
    } else if (texto == 'imprimir') {
      imprimir(produtos, texto);
    } else if (texto == 'remover') {
      remover(produtos, texto);
    } else {
      produtos.add(texto);
    }
  }
}

imprimir(List<String> produtos, texto) {
  for (var i = 0; i < produtos.length; i++) {
    print(" Item: $i -  ${produtos[i]}");
  }
}

remover(List<String> produtos, String texto) {
  print("Qual o produto você deseja remover?");
  print("carrinho: $produtos");
  produtos.remove(texto = stdin.readLineSync() ?? "");
}

sair(bool condicao, String texto) {
  print('tem certeza q deseja finalizar sua compra?');
  String texto = stdin.readLineSync() ?? "";
  if (texto == 'sim') {
    print("Você saiu!");
  }
}
