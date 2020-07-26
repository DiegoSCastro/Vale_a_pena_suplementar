import 'package:flutter/material.dart';

var precoArrobaController = TextEditingController();
var numeroAnimaisController = TextEditingController();
var pesoInicialController = TextEditingController();
var periodoController = TextEditingController();
var textProduto1Controller = TextEditingController();
var textProduto2Controller = TextEditingController();
var custo1Controller = TextEditingController();
var custo2Controller = TextEditingController();
var consumoDiario1Controller = TextEditingController();
var consumoDiario2Controller = TextEditingController();
var ganhoDiario1controller = TextEditingController();
var ganhoDiario2controller = TextEditingController();

double precoArroba = double.parse(precoArrobaController.text);
double numeroAnimais = double.parse(numeroAnimaisController.text);
double pesoInicial = double.parse(pesoInicialController.text);
double periodo = double.parse(periodoController.text);
String textProduto1 = '';
String textProduto2 = '';
double custo1 = double.parse(custo1Controller.text);
double custo2 = double.parse(custo2Controller.text);
double consumoDiario1 = double.parse(consumoDiario1Controller.text);
double consumoDiario2 = double.parse(consumoDiario2Controller.text);
double ganhoDiario1 = double.parse(ganhoDiario1controller.text);
double ganhoDiario2 = double.parse(ganhoDiario2controller.text);
