import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            const Text('A pergunta!'),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ElevatedButton(
                    child: const Text('Resposta 1'),
                    onPressed: () => print('Resposta 1'),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Resposta 2'),
                  onPressed: () => print('Resposta 2'),
                ),
                ElevatedButton(
                  child: const Text('Resposta 3'),
                  onPressed: () => print('Resposta 3'),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
