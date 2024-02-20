import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var perguntaSelecionada = 0;

  void reponder() {
    print('Respondido');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];
    return MaterialApp(
        home: Scaffold(
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
    ));
  }
}
