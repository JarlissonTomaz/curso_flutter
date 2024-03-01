import 'package:flutter/material.dart';
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
    print('Respondido');
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
        title: const Text('Meu Primeiro App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ElevatedButton(
                    onPressed: _reponder,
                    child: const Text('Resposta 1'),
                  ),
                ),
                ElevatedButton(
                  onPressed: _reponder,
                  child: const Text('Resposta 2'),
                ),
                ElevatedButton(
                  onPressed: _reponder,
                  child: const Text('Resposta 3'),
                ),
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
