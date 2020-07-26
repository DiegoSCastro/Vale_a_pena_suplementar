import 'package:flutter/material.dart';
import 'package:valeapenasuplementar/controllers.dart';

import 'function.dart';

class TextResults extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        padding: EdgeInsets.all(5),
        child: Text(
          getResultPeso(),
          style: TextStyle(fontSize: 20),
        ),
      ),
      Container(
        padding: EdgeInsets.all(5),
        child: Text(
          getResultLucro(),
          style: TextStyle(fontSize: 20),
        ),
      ),
    ]);
  }
}

String getResultPeso() {
  if (pesoFinal1 == 0 && pesoFinal2 == 0) {
    return '';
  } else if (pesoFinal1 >= pesoFinal2) {
    return 'O $textProduto1 apresenta um ganho de peso de $diferencaPeso kg a mais por animal no período.';
  } else {
    return 'O $textProduto2 apresenta um ganho de peso de ${diferencaPeso.abs()} kg a mais por animal no período.';
  }
}

String getResultLucro() {
  if (lucroPeriodo1 == 0 && lucroPeriodo2 == 0) {
    return '';
  } else if (lucroPeriodo1 >= lucroPeriodo2) {
    return 'O $textProduto1 terá uma lucratividade superior '
        'de R\$ ${diferencaLucro.toStringAsFixed(2)} por animal, o que'
        ' representa um ganho de R\$ ${lucroLote.toStringAsFixed(2)} em todo lote durante o período.';
  } else {
    return 'O $textProduto2 terá uma lucratividade superior '
        'de R\$ ${(diferencaLucro.abs()).toStringAsFixed(2)} por animal, o que'
        ' representa um ganho de R\$ ${(lucroLote.abs()).toStringAsFixed(2)} em todo lote durante o período.';
  }
}
