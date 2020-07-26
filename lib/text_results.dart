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
  if (pesoFinal1 >= pesoFinal2) {
    return 'O $textProduto1 terá $diferencaPeso kg de ganho de peso por animal a mais no período.';
  } else {
    return 'O $textProduto2 terá ${diferencaPeso * -1} kg de ganho de peso por animal a mais no período.';
  }
}

String getResultLucro() {
  if (lucroPeriodo1 >= lucroPeriodo2) {
    return 'O $textProduto1 terá uma lucratividade superior '
        'de R\$ $diferencaLucro por animal, o que'
        ' representa um ganho de R\$ ${lucroLote.toStringAsFixed(2)} no lote.';
  } else {
    return 'O $textProduto2 terá uma lucratividade superior '
        'de R\$ ${(diferencaLucro * -1).toStringAsFixed(2)} por animal, o que'
        ' representa um ganho de R\$ ${(lucroLote * -1).toStringAsFixed(2)} no lote.';
  }
}
