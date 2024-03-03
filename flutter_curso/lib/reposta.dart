import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
