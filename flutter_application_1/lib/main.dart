import 'package:flutter/material.dart';
import "./resultado.dart";
import "./questionario.dart";
import "./resposta.dart";

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaAtual = 0;
  var _pontuacao = 0;
  final _perguntas = const [
    {
      "pergunta": "Qual sua cor favorita?",
      "resposta": [
        {"texto": "Azul", "nota": 10},
        {"texto": "Vermelho", "nota": 5},
        {"texto": "Amarelo", "nota": 2},
        {"texto": "Verde", "nota": 1},
      ],
    },
    {
      "pergunta": "Qual seu animal favorito?",
      "resposta": [
        {"texto": "Cachorro", "nota": 10},
        {"texto": "Gato", "nota": 5},
        {"texto": "Pássaro", "nota": 2},
        {"texto": "Tubarão", "nota": 1},
      ],
    },
    {
      "pergunta": "Qual sua comida favorita?",
      "resposta": [
        {"texto": "Pizza", "nota": 10},
        {"texto": "Hamburguer", "nota": 5},
        {"texto": "Salada", "nota": 2},
        {"texto": "Sorvete", "nota": 1},
      ],
    },
  ];

  _responder(int nota) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaAtual++;
        _pontuacao += nota;
      });
    }
  }

  _reiniciar() {
    setState(() {
      _perguntaAtual = 0;
      _pontuacao = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaAtual < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Olá Flutter")),
        body:
            temPerguntaSelecionada
                ? Questionario(
                  perguntaSelecionada: _perguntaAtual,
                  perguntas: _perguntas,
                  responder: _responder,
                )
                : Resultado(nota: _pontuacao, restart: _reiniciar),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
