import 'package:flutter/material.dart';
import 'package:quiz/questaoRespostas.dart';
import 'package:quiz/questaoRespostasModel.dart';

void main() => runApp(QuizApp());

//instanciar um objeto PerguntaResposta

//classe que gerencia o estado
class _PerguntaAppState extends State<QuizApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    QuestaoRespostasModel perguntaRespostas1 = QuestaoRespostasModel(
        'Qual sua cor favorita?', ['Preto', 'Branco', 'Azul', 'Vermelho']);
    QuestaoRespostasModel perguntaRespostas2 = QuestaoRespostasModel(
        'Qual sua raça de cão favorita?', [
      'Bulldog Francês',
      'Golden Retrivier',
      'Pastor Alemão',
      'Border Coolie'
    ]);
    QuestaoRespostasModel perguntaRespostas3 = QuestaoRespostasModel(
        'Qual carro gostaria de ter nomento?',
        ['VW GTI', 'Audi A3', 'VW Fusca', 'BMW 320i']);

    var questaoRepostasModelLista = <QuestaoRespostasModel>[];
    questaoRepostasModelLista.add(perguntaRespostas1);
    questaoRepostasModelLista.add(perguntaRespostas2);
    questaoRepostasModelLista.add(perguntaRespostas3);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Perguntas')),
          body: QuestaoRespostas(
              questaoRepostasModelLista[_perguntaSelecionada], _responder)),
    );
  }
}

//root widget
class QuizApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
