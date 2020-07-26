import 'package:flutter/material.dart';
import 'package:valeapenasuplementar/text_results.dart';
import 'text_fields.dart';
import 'controllers.dart';
import 'function.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vale a pena Suplementar?'),
        backgroundColor: Colors.green[600],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    'Lote - Bovinos',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: NumberTextField(
                        numberControl: precoArrobaController,
                        numberLabel: 'Valor da @',
                        numberPrefix: 'R\$/@:',
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: NumberTextField(
                        numberControl: numeroAnimaisController,
                        numberLabel: 'Nº de Animais',
                        numberPrefix: 'Total:',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: NumberTextField(
                        numberControl: pesoInicialController,
                        numberLabel: 'Peso Inicial',
                        numberPrefix: 'kg:',
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: NumberTextField(
                        numberControl: periodoController,
                        numberLabel: 'Período',
                        numberPrefix: 'Dias:',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'Produtos',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: BuildTextField(
                        textControl: textProduto1Controller,
                        textLabel: 'Nome Produto 1',
                        textPrefix: '1:',
                        textBackGColor: Colors.green[100],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: BuildTextField(
                        textControl: textProduto2Controller,
                        textLabel: 'Nome Produto 2',
                        textPrefix: '2:',
                        textBackGColor: Colors.yellow[100],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: NumberTextField(
                        numberControl: custo1Controller,
                        numberLabel: 'Custo 1',
                        numberPrefix: 'R\$/kg:',
                        backGColor: Colors.green[100],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: NumberTextField(
                        numberControl: custo2Controller,
                        numberLabel: 'Custo 2',
                        numberPrefix: 'R\$/kg:',
                        backGColor: Colors.yellow[100],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: NumberTextField(
                        numberControl: consumoDiario1Controller,
                        numberLabel: 'Consumo diário 1',
                        numberPrefix: 'g/dia:',
                        backGColor: Colors.green[100],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: NumberTextField(
                        numberControl: consumoDiario2Controller,
                        numberLabel: 'Consumo diário 2',
                        numberPrefix: 'g/dia:',
                        backGColor: Colors.yellow[100],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: NumberTextField(
                        numberControl: ganhoDiario1controller,
                        numberLabel: 'Ganho diário 1',
                        numberPrefix: 'g/dia:',
                        backGColor: Colors.green[100],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: NumberTextField(
                        numberControl: ganhoDiario2controller,
                        numberLabel: 'Ganho diário 2',
                        numberPrefix: 'g/dia:',
                        backGColor: Colors.yellow[100],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 10,
                    onPressed: () {
                      setState(() {
                        receiveText1();
                        calculateCustoDiario1();
                        calculateCustoPeriodo1();
                        calculateGanhoRs1();
                        calculateGanhoPeriodo1();
                        calculatelucroPeriodo1();
                        calculateGanhoKg1();
                        calculatePesoFinal1();
                        receiveText2();
                        calculateCustoDiario2();
                        calculateCustoPeriodo2();
                        calculateGanhoRs2();
                        calculateGanhoPeriodo2();
                        calculatelucroPeriodo2();
                        calculateGanhoKg2();
                        calculatePesoFinal2();
                        calculateDiferencaLucro();
                        calculateDiferencaPeso();
                        getResultPeso();
                        getResultLucro();
                        calculateLucroLote();
                        print(getResultPeso());
                      });
                    },
                    padding: EdgeInsets.all(10),
                    color: Colors.green,
                    child: Text(
                      'Calcular',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Card(
                        elevation: 5,
                        color: Colors.green[100],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '$textProduto1',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ResultText(
                                resultText:
                                    'Custo Diário: R\$ ${custoDiario1.toStringAsFixed(2)}'),
                            ResultText(
                                resultText:
                                    'Ganho Diário: R\$ ${ganhoDiarioRs1.toStringAsFixed(2)}'),
                            ResultText(
                                resultText:
                                    'Custo no Período: R\$ ${custoPeriodo1.toStringAsFixed(2)}'),
                            ResultText(
                                resultText:
                                    'Ganho no Período: R\$ ${ganhoPeriodo1.toStringAsFixed(2)}'),
                            ResultText(
                                resultText:
                                    'Lucro no Período: R\$ ${lucroPeriodo1.toStringAsFixed(2)}'),
                            ResultText(
                                resultText:
                                    'Ganho de Peso Total: $ganhokg1 Kg'),
                            ResultText(
                                resultText: 'Peso Final: $pesoFinal1 Kg'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.yellow[100],
                        elevation: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '$textProduto2',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ResultText(
                                resultText:
                                    'Custo Diário: R\$ ${custoDiario2.toStringAsFixed(2)}'),
                            ResultText(
                                resultText:
                                    'Ganho Diário: R\$ ${ganhoDiarioRs2.toStringAsFixed(2)}'),
                            ResultText(
                                resultText:
                                    'Custo no Período: R\$ ${custoPeriodo2.toStringAsFixed(2)}'),
                            ResultText(
                                resultText:
                                    'Ganho no Período: R\$ ${ganhoPeriodo2.toStringAsFixed(2)}'),
                            ResultText(
                                resultText:
                                    'Lucro no Período: R\$ ${lucroPeriodo2.toStringAsFixed(2)}'),
                            ResultText(
                                resultText:
                                    'Ganho de Peso Total: $ganhokg2 Kg'),
                            ResultText(
                                resultText: 'Peso Final: $pesoFinal2 Kg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextResults()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
