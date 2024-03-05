import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado(this.pontuacao, this.reiniciar, {super.key});
  final void Function() reiniciar;

  final int pontuacao;

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Brabo apenas!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28.0),
          ),
        ),
        TextButton(
            onPressed: reiniciar,
            child: const Text(
              'Reiniciar',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
              ),
            ))
      ],
    );
  }
}
