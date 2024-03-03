import 'package:flutter/material.dart';
import 'package:flutter_curso/reposta.dart';
import 'questao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PerguntaApp());
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _reponder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Row(
              children: [
                Resposta('Repsota 1', _reponder),
                Resposta('Resposta 2', _reponder),
                Resposta('Resposta 3', _reponder)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
