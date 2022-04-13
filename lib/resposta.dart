import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/model/respostaModel.dart';

class Resposta extends StatelessWidget {
  final RespostaModel respostaModel;

  final void Function(int) quandoSelecionado;

  Resposta(this.respostaModel, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        onPressed: () => quandoSelecionado(respostaModel.nota),
        child: Text(respostaModel.resposta),
      ),
    );
  }
}
