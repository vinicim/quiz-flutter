import 'package:flutter/material.dart';
import 'package:quiz/questionario.dart';
import 'package:quiz/questionarioModel.dart';
import 'package:quiz/resultado.dart';

void main() => runApp(QuizApp());

//instanciar um objeto QuestaoResposta

//classe que gerencia o estado
class _QuestaoAppState extends State<QuizApp> {
  var _questaoSelecionada = 0;
  List<QuestionarioModel> _questionarioModelLista = [];

  QuestionarioModel questionario1 = QuestionarioModel(
      'Qual sua cor favorita?', ['Preto', 'Branco', 'Azul', 'Vermelho']);
  QuestionarioModel questionario2 = QuestionarioModel(
      'Qual sua raça de cão favorita?', [
    'Bulldog Francês',
    'Golden Retrivier',
    'Pastor Alemão',
    'Border Coolie'
  ]);
  QuestionarioModel questionario3 = QuestionarioModel(
      'Qual carro gostaria de ter nomento?',
      ['VW GTI', 'Audi A3', 'VW Fusca', 'BMW 320i']);

  void _responder() {
    setState(() {
      if (temQuestaoSelecionada) _questaoSelecionada++;
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
              : Resultado()),
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
