import 'package:flutter/material.dart';

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

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void reponder() {
    print('Respondido');
    setState(() {
      perguntaSelecionada++;
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
            Text(perguntas[perguntaSelecionada]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ElevatedButton(
                    onPressed: reponder,
                    child: const Text('Resposta 1'),
                  ),
                ),
                ElevatedButton(
                  onPressed: reponder,
                  child: const Text('Resposta 2'),
                ),
                ElevatedButton(
                  onPressed: reponder,
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
    return PerguntaAppState();
  }
}
