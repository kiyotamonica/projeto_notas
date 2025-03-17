import 'dart:io';

void main() {
  getComando();
}

String getComando(){
  List <String> comandos = <String>["1","2","3"];
  String? entrada = "";

  print("Projeto de Notas\nOpções: 1 - Adicionar Nota, 2 - Listar Notas, 3 - Sair");
  entrada = stdin.readLineSync();
  if(entrada == null || !comandos.contains(entrada)){
    print("Opção inválida.");
    getComando();
  }
  
  return entrada!;
}
