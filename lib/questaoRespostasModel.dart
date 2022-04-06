class QuestaoRespostasModel {
  QuestaoRespostasModel(this._pergunta, this._respostas);

  String? _pergunta;
  List<String>? _respostas;

  get pergunta {
    return _pergunta;
  }

  get respostas {
    return _respostas;
  }
}
