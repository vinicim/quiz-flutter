import 'package:flutter/material.dart';
import 'package:quiz/model/respostaModel.dart';
import 'package:quiz/questionario.dart';
import 'package:quiz/model/questionarioModel.dart';
import 'package:quiz/resposta.dart';
import 'package:quiz/resultado.dart';

void main() => runApp(QuizApp());

//instanciar um objeto QuestaoResposta

//classe que gerencia o estado
class _QuestaoAppState extends State<QuizApp> {
  var _questaoSelecionada = 0;
  int _pontuacao = 0;
  List<QuestionarioModel> _questionarioModelLista = [];

  QuestionarioModel questionario1 =
      QuestionarioModel('Qual sua cor favorita?', [
    RespostaModel('Branco', 10),
    RespostaModel('Preto', 9),
    RespostaModel('Azul', 6),
    RespostaModel('Amarelo', 5)
  ]);
  QuestionarioModel questionario2 =
      QuestionarioModel('Qual sua raça de cão favorita?', [
    RespostaModel('Bulldog Francês', 10),
    RespostaModel('Golden Retrivier', 8),
    RespostaModel('Pastor Alemão', 9),
    RespostaModel('Border Coolie', 7),
  ]);
  QuestionarioModel questionario3 =
      QuestionarioModel('Qual carro gostaria de ter nomento?', [
    RespostaModel('VW GTI', 10),
    RespostaModel('Audi A3', 8),
    RespostaModel('VW Fusca', 6),
    RespostaModel('BMW 320i', 6)
  ]);

  void _responder(int pontuacao) {
    setState(() {
      if (temQuestaoSelecionada) {
        _questaoSelecionada++;
        _pontuacao += pontuacao;
        print('pontuacao: $_pontuacao');
      }
    });
  }

  void reiniciar() {
    setState(() {
      this._pontuacao = 0;
      this._questaoSelecionada = 0;
    });
  }

  bool get temQuestaoSelecionada {
    return _questaoSelecionada < _questionarioModelLista.length;
  }

  @override
  Widget build(BuildContext context) {
    _questionarioModelLista.clear();
    _questionarioModelLista.add(questionario1);
    _questionarioModelLista.add(questionario2);
    _questionarioModelLista.add(questionario3);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Questões')),
          body: temQuestaoSelecionada
              ? Questionario(
                  _questionarioModelLista[_questaoSelecionada], _responder)
              : Resultado(_pontuacao, reiniciar)),
    );
  }
}

//root widget
class QuizApp extends StatefulWidget {
  @override
  _QuestaoAppState createState() {
    return _QuestaoAppState();
  }
}
