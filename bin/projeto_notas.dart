import 'dart:io';

void main() {
  List <String> notas = <String> [];
  getComando();
  adicionaNota(notas);
  listarNota(notas);
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
