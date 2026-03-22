void main() {
  // Enum

  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.CARTAO);

}

enum TipoPagamento {
  PIX, BOLETO, CARTAO;
}

extension ExceptionTipoPagamento on TipoPagamento {

  String toValue() {

    Map map = {

      TipoPagamento.PIX: "Pix",
      TipoPagamento.BOLETO: "Boleto",
      TipoPagamento.CARTAO: "Cartão"

    };

    return map[this];
  }

}

class Pagamento {

  void pagar(TipoPagamento tipoPagamento) {

    if(tipoPagamento.toValue() == "Pix") {
      print("Pagando com Pix");
    } else if (tipoPagamento.toValue() == "Boleto") {
      print("Pagando com Boleto");
    } else if (tipoPagamento.toValue() == "Cartão") {
      print("Pagando com Cartão");
    }

  }

}