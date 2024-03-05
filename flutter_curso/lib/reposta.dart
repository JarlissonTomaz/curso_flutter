import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta(this.texto, this.onSelecao, {super.key});

  final String texto;
  final void Function() onSelecao;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onSelecao,
        child: Text(texto),
      ),
    );
  }
}
