import 'package:flutter/cupertino.dart';
import 'package:quiz/model/questionarioModel.dart';
import 'package:quiz/model/respostaModel.dart';
import 'package:quiz/questao.dart';
import 'package:quiz/resposta.dart';

class Questionario extends StatelessWidget {
  QuestionarioModel _QuestionarioModel;
  final void Function(int) quandoSelecionado;

  Questionario(this._QuestionarioModel, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    List<RespostaModel> respostas = _QuestionarioModel.respostas;

    return Column(
      children: [
        Questao(_QuestionarioModel.pergunta),
        ...respostas.map((e) => Resposta(e, quandoSelecionado)).toList()
      ],
    );
  }
}
