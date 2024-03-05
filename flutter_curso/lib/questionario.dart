import 'package:flutter/material.dart';
import 'package:flutter_curso/reposta.dart';

import 'questao.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    required this.perguntaSelecionada,
    required this.perguntas,
    required this.responder,
    super.key,
  });
  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  final int perguntaSelecionada;

  final List<Map<String, Object>> perguntas;

  final void Function(int) responder;

  @override
  Widget build(BuildContext context) {
    var respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Questao(perguntas[perguntaSelecionada]['texto'] as String),
          ...respostas.map((resp) {
            return Resposta(
              resp['texto'].toString(),
              () => responder((resp['pontuacao'] as int)),
            );
          }),
        ],
      ),
    );
  }
}
