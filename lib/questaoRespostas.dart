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
    List<String> respostas = _questaoRespostasModel.respostas;

    return Column(
      children: [
        Questao(_questaoRespostasModel.pergunta),
        ...respostas.map((e) => Resposta(e, quandoSelecionado)).toList()
      ],
    );
  }
}
