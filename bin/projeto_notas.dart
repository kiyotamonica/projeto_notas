import 'dart:io';

void main() {
  List <String> notas = <String> [];
  print("Projeto de Notas !");
  menu(notas);
}

String getComando(){
  List <String> comandos = <String>["1","2","3"];
  String? entrada = "";

  print("Opções: 1 - Adicionar Nota, 2 - Listar Notas, 3 - Sair");
  entrada = stdin.readLineSync();
  if(entrada == null || !comandos.contains(entrada)){
    print("Opção inválida.");
    getComando();
  }
  
  return entrada!;
}

List <String> adicionaNota(List<String> notas){
  String? nota = "";

  print("Escreva uma nota:");
  nota = stdin.readLineSync();
  if (nota == null || nota.isEmpty){
    print("Não é possível adicionar uma nota vazia.");
    adicionaNota(notas);
  }
  notas.add(nota!);

  return notas;
}

void listarNota(List <String> notas){
  for(var i=0; i<notas.length; i++){
    print(notas[i]);
  }
}

void menu(List<String> notas){
  String comando = getComando();
  switch(comando){
    case "1":
      adicionaNota(notas);
      menu(notas);
      break;
    case "2":
      listarNota(notas);
      menu(notas);
      break;
    case "3":
      print("Até breve ! :)");
      break;
  }
}
