void main() {
  // Enum

  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.BOLETO);

}

enum TipoPagamento {

  // PIX, BOLETO, CARTAO;

  PIX(1, "Pix"), 
  BOLETO(2, "Boleto"), 
  CARTAO(3, "Cartão");

  final String value;
  final int id;
  const TipoPagamento(this.id, this.value);

}

class Pagamento {

  void pagar(TipoPagamento tipoPagamento) {

    if(tipoPagamento.value == "Pix") {
      print("Pagando com Pix... ${tipoPagamento.id}");
    } else if (tipoPagamento.value == "Boleto") {
      print("Pagando com Boleto... ${tipoPagamento.id}");
    } else if (tipoPagamento.value == "Cartão") {
      print("Pagando com Cartão... ${tipoPagamento.id}");
    }

  }

}