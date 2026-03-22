void main() {
// Métodos e Classes

  Celular celularDavid = Celular("Preto", 5, 800, 5.7);
  Celular celularZe = Celular("Cinza", 15, 100, 5.7);

  print(celularDavid.mostrarComponentes());
  print(celularZe.mostrarComponentes());

  double res = celularDavid.precoCelular(1000);
  print(res);

}

class Celular {

  final String cor;
  final int qtdProcess;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdProcess, this.peso, this.tamanho);

  String mostrarComponentes() {
    return "Cor: ${cor}, Quantidade de Processadores: ${qtdProcess}, Tamanho: ${tamanho} Polegadas, Peso: ${peso} Grama";
  }

  double precoCelular(double value) {
    return value * qtdProcess;
  }

}