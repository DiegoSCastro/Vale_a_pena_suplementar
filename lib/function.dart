import 'package:flutter/cupertino.dart';

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

void resetFields() {
  textProduto1 = '';
  textProduto2 = '';
  precoArrobaController.clear();
  numeroAnimaisController.clear();
  pesoInicialController.clear();
  periodoController.clear();
  textProduto1Controller.clear();
  textProduto2Controller.clear();
  custo1Controller.clear();
  custo2Controller.clear();
  consumoDiario1Controller.clear();
  consumoDiario2Controller.clear();
  ganhoDiario1controller.clear();
  ganhoDiario2controller.clear();
  custoDiario1 = 0;
  ganhoDiarioRs1 = 0;
  custoPeriodo1 = 0;
  ganhoPeriodo1 = 0;
  lucroPeriodo1 = 0;
  ganhokg1 = 0;
  pesoFinal1 = 0;

  custoDiario2 = 0;
  ganhoDiarioRs2 = 0;
  custoPeriodo2 = 0;
  ganhoPeriodo2 = 0;
  lucroPeriodo2 = 0;
  ganhokg2 = 0;
  pesoFinal2 = 0;

  diferencaPeso = 0;
  diferencaLucro = 0;
  lucroLote = 0;
}

void receiveText1() {
  textProduto1 = textProduto1Controller.text;
}

void calculateCustoDiario1() {
  custoDiario1 = double.parse(custo1Controller.text) *
      double.parse(consumoDiario1Controller.text) /
      1000;
}

void calculateCustoPeriodo1() {
  custoPeriodo1 = double.parse(periodoController.text) *
      double.parse(custo1Controller.text) *
      double.parse(consumoDiario1Controller.text) /
      1000;
}

void calculateGanhoRs1() {
  ganhoDiarioRs1 = double.parse(ganhoDiario1controller.text) /
      30 *
      double.parse(precoArrobaController.text) /
      1000;
}

void calculateGanhoPeriodo1() {
  ganhoPeriodo1 = ganhoDiarioRs1 * double.parse(periodoController.text);
}

void calculatelucroPeriodo1() {
  lucroPeriodo1 = ganhoPeriodo1 - custoPeriodo1;
}

void calculateGanhoKg1() {
  ganhokg1 = double.parse(ganhoDiario1controller.text) *
      double.parse(periodoController.text) /
      1000;
}

void calculatePesoFinal1() {
  pesoFinal1 = double.parse(pesoInicialController.text) + ganhokg1;
}

void receiveText2() {
  textProduto2 = textProduto2Controller.text;
}

void calculateCustoDiario2() {
  custoDiario2 = double.parse(custo2Controller.text) *
      double.parse(consumoDiario2Controller.text) /
      1000;
}

void calculateCustoPeriodo2() {
  custoPeriodo2 = double.parse(periodoController.text) *
      double.parse(custo2Controller.text) *
      double.parse(consumoDiario2Controller.text) /
      1000;
}

void calculateGanhoRs2() {
  ganhoDiarioRs2 = double.parse(ganhoDiario2controller.text) /
      30 *
      double.parse(precoArrobaController.text) /
      1000;
}

void calculateGanhoPeriodo2() {
  ganhoPeriodo2 = ganhoDiarioRs2 * double.parse(periodoController.text);
}

void calculatelucroPeriodo2() {
  lucroPeriodo2 = ganhoPeriodo2 - custoPeriodo2;
}

void calculateGanhoKg2() {
  ganhokg2 = double.parse(ganhoDiario2controller.text) *
      double.parse(periodoController.text) /
      1000;
}

void calculatePesoFinal2() {
  pesoFinal2 = double.parse(pesoInicialController.text) + ganhokg2;
}

void calculateDiferencaPeso() {
  diferencaPeso = pesoFinal1 - pesoFinal2;
}

void calculateDiferencaLucro() {
  diferencaLucro = lucroPeriodo1 - lucroPeriodo2;
}

void calculateLucroLote() {
  lucroLote = diferencaLucro * double.parse(numeroAnimaisController.text);
}
