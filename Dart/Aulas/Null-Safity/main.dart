void main() {
// null-safity

  String? nome;
  nome = "David";
  print(nome!);
  nome = null;

  late String sobrenome;
  sobrenome = "Telles";
  print(sobrenome);

}