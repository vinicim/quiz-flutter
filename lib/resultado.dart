import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reinicarQuestionario;

  Resultado(this.pontuacao, this.reinicarQuestionario);

  String get frasePontuacao {
    if (pontuacao < 8) {
      return 'Você é razoável.';
    } else if (pontuacao < 10) {
      return 'Você é bom.';
    } else if (pontuacao < 12) {
      return 'Excelente!';
    } else if (pontuacao < 14) {
      return 'Nível expert!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              frasePontuacao,
              style: TextStyle(fontSize: 28),
            ),
          ),
          TextButton(
              onPressed: reinicarQuestionario,
              child: Text('Reiniciar?',
                  style: TextStyle(fontSize: 18, color: Colors.blue))),
        ],
      ),
    );
  }
}
