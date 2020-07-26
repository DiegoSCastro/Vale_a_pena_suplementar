import 'controllers.dart';

double custoDiario1 = 0;
double ganhoDiarioRs1 = 0;
double custoPeriodo1 = 0;
double ganhoPeriodo1 = 0;
double lucroPeriodo1 = 0;
double ganhokg1 = 0;
double pesoFinal1 = 0;

double custoDiario2 = 0;
double ganhoDiarioRs2 = 0;
double custoPeriodo2 = 0;
double ganhoPeriodo2 = 0;
double lucroPeriodo2 = 0;
double ganhokg2 = 0;
double pesoFinal2 = 0;

double diferencaPeso = 0;
double diferencaLucro = 0;
double lucroLote = 0;

void receiveText1() {
  textProduto1 = textProduto1Controller.text;
}

void calculateCustoDiario1() {
  custoDiario1 = custo1 * consumoDiario1 / 1000;
}

void calculateCustoPeriodo1() {
  custoPeriodo1 = periodo * custo1 * consumoDiario1 / 1000;
}

void calculateGanhoRs1() {
  ganhoDiarioRs1 = ganhoDiario1 / 30 * precoArroba / 1000;
}

void calculateGanhoPeriodo1() {
  ganhoPeriodo1 = ganhoDiarioRs1 * periodo;
}

void calculatelucroPeriodo1() {
  lucroPeriodo1 = ganhoPeriodo1 - custoPeriodo1;
}

void calculateGanhoKg1() {
  ganhokg1 = ganhoDiario1 * periodo / 1000;
}

void calculatePesoFinal1() {
  pesoFinal1 = pesoInicial + ganhokg1;
}

void receiveText2() {
  textProduto2 = textProduto2Controller.text;
}

void calculateCustoDiario2() {
  custoDiario2 = custo2 * consumoDiario2 / 1000;
}

void calculateCustoPeriodo2() {
  custoPeriodo2 = periodo * custo2 * consumoDiario2 / 1000;
}

void calculateGanhoRs2() {
  ganhoDiarioRs2 = ganhoDiario2 / 30 * precoArroba / 1000;
}

void calculateGanhoPeriodo2() {
  ganhoPeriodo2 = ganhoDiarioRs2 * periodo;
}

void calculatelucroPeriodo2() {
  lucroPeriodo2 = ganhoPeriodo2 - custoPeriodo2;
}

void calculateGanhoKg2() {
  ganhokg2 = ganhoDiario2 * periodo / 1000;
}

void calculatePesoFinal2() {
  pesoFinal2 = pesoInicial + ganhokg2;
}

void calculateDiferencaPeso() {
  diferencaPeso = pesoFinal1 - pesoFinal2;
}

void calculateDiferencaLucro() {
  diferencaLucro = lucroPeriodo1 - lucroPeriodo2;
}

void calculateLucroLote() {
  lucroLote = diferencaLucro * numeroAnimais;
}
