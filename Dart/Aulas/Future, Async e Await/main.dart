void main() async {
  // Future, Async e Await

  Future<String> cepFuture = getCepByName('Rua JK');
  late String cep;

  // cepFuture.then((result) => print(result));

  cep = await cepFuture;

  print(cep);

}

Future<String> getCepByName(String name) {
  // Simulando req
  return Future.value("123456789");
}