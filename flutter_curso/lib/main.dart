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
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro']
      }
    ];
    var respostas =
        perguntas[_perguntaSelecionada]['respostas'] as List<String>;

    // for (var pergunta
    //     in perguntas[_perguntaSelecionada]['respostas'] as List<String>) {
    //   respostasSelecionadas.add(Resposta(pergunta, _reponder));
    // }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'] as String),
            Row(
              children: [
                ...respostas.map((e) => Resposta(e, _reponder)),
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
