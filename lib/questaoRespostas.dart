import 'package:flutter/cupertino.dart';
import 'package:quiz/questaoRespostasModel.dart';
import 'package:quiz/questao.dart';
import 'package:quiz/resposta.dart';

class QuestaoRespostas extends StatelessWidget {
  QuestaoRespostasModel _questaoRespostasModel;
  final void Function() quandoSelecionado;

  QuestaoRespostas(this._questaoRespostasModel, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(_questaoRespostasModel.pergunta),
        for (var resposta in _questaoRespostasModel.respostas)
          Resposta(resposta, quandoSelecionado)
      ],
    );
  }
}
