void main() {
  // Herança, Polimorfismo e Abstração

  David david = David();
  print(david.falar());

  Pagamento pagamento = PagarBoleto();
  pagamento.pagar();

  pagamento = PagarPix();
  pagamento.pagar();

}

abstract class Pagamento {
  void pagar();
}

class PagarBoleto implements Pagamento {
  void pagar() {
    print("Pagando com Boleto");
  }
}

class PagarPix implements Pagamento {
  void pagar() {
    print("Pagando com Pix");
  }
}

class Pai {

  String falar() {
    return "Gírias";
  }

}

class David extends Pai{

}

abstract class Pessoa {

  String comunicar();

}

class PessoaEt implements Pessoa {
  String comunicar() {
    return "Olá Mundo";
  }
}

class PessoaNaoEt implements Pessoa {
  String comunicar() {
    return "Bom dia!";
  }
}