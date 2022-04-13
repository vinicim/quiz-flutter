class RespostaModel {
  RespostaModel(this._resposta, this._nota);

  String _resposta;
  int _nota;

  String get resposta {
    return this._resposta;
  }

  int get nota {
    return this._nota;
  }
}
