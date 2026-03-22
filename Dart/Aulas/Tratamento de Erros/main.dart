void main() {
  // Exceptions

  try{ // Tentar Alguma coisa

    print((2 / 0).toInt());

  } catch (err) { // Capturar uma falha

    print("Error: $err");
    // rethrow; // Propagar o erro
    throw CustomError("Erro Customizado");

  } 

}

class CustomError implements Exception {

  final String error;
  CustomError(this.error);

}