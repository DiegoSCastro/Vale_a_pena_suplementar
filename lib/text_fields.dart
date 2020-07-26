import 'package:flutter/material.dart';

class NumberTextField extends StatelessWidget {
  final String numberLabel;
  final String numberPrefix;
  final TextEditingController numberControl;
  final Color backGColor;

  const NumberTextField(
      {this.numberLabel,
      this.numberPrefix,
      this.numberControl,
      this.backGColor});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 20),
      controller: numberControl,
      decoration: InputDecoration(
        filled: true,
        fillColor: backGColor,
        labelStyle: TextStyle(fontSize: 15),
        border: OutlineInputBorder(),
        labelText: numberLabel,
        prefixText: numberPrefix,
      ),
      keyboardType: TextInputType.number,
    );
  }
}

class BuildTextField extends StatelessWidget {
  final String textLabel;
  final String textPrefix;
  final TextEditingController textControl;
  final Color textBackGColor;

  const BuildTextField(
      {this.textLabel, this.textPrefix, this.textControl, this.textBackGColor});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textControl,
      decoration: InputDecoration(
        filled: true,
        fillColor: textBackGColor,
        border: OutlineInputBorder(),
        labelText: textLabel,
        prefixText: textPrefix,
      ),
    );
  }
}

class ResultText extends StatelessWidget {
  final String resultText;
  const ResultText({this.resultText});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: FittedBox(
        child: Text(
          resultText,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

//
//class CardResult extends StatefulWidget {
//  final String varName;
//  final double custoDiario;
//  final double custoPeriodo;
//  final double ganhoDiario;
//  final double ganhoKg;
//  final double ganhoArroba;
//
//  const CardResult({
//    this.varName,
//    this.custoDiario,
//    this.custoPeriodo,
//    this.ganhoDiario,
//    this.ganhoKg,
//    this.ganhoArroba,
//  });
//  @override
//  _CardResultState createState() => _CardResultState();
//}
//
//class _CardResultState extends State<CardResult> {
//  @override
//  Widget build(BuildContext context) {
//    return Card(
//      child: (Column(
//        children: <Widget>[
//          Text('TextoProdutoX'),
//          Text('Custo Diário: X'),
//          Text('Custo Período: X'),
//          Text('Ganho Diário: X'),
//          Text('Ganho em Kg: X'),
//          Text('Ganho em @: X'),
//        ],
//      )),
//    );
//  }
//}
