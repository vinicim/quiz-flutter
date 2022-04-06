import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Resposta extends StatelessWidget {
  final String texto;

  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
