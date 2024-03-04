import 'package:flutter/material.dart';
import 'package:flutter_curso/questionario.dart';
import 'resultado.dart';

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
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'notas': 10},
        {'texto': 'Vermelho', 'notas': 8},
        {'texto': 'Verde', 'notas': 5},
        {'texto': 'Branco', 'notas': 1}
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Elefante', 'nota': 10},
        {'texto': 'Coelho', 'nota': 8},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Leão  ', 'nota': 1}
      ]
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': [
        {'texto': 'Maria', 'nota': 10},
        {'texto': 'João', 'nota': 8},
        {'texto': 'Leo', 'nota': 5},
        {'texto': 'Pedro', 'nota': 1},
      ]
    }
  ];

  var _perguntaSelecionada = 0;
  void _reponder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: temPerguntaSelecionada
          ? Questionario(
              perguntaSelecionada: _perguntaSelecionada,
              perguntas: _perguntas,
              responder: _reponder,
            )
          : const Resultado(),
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
