import 'package:quiz/model/respostaModel.dart';

class QuestionarioModel {
  QuestionarioModel(this._pergunta, this._respostas);

  String _pergunta;
  List<RespostaModel> _respostas;

  get pergunta {
    return _pergunta;
  }

  get respostas {
    return _respostas;
  }
}
