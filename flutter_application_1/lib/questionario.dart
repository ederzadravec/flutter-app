import 'package:flutter/material.dart';
import "./questao.dart";
import "./resposta.dart";

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario({
    required this.perguntaSelecionada,
    required this.perguntas,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPerguntaSelecionada
            ? perguntas[perguntaSelecionada]["resposta"]
                as List<Map<String, Object>>
            : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]["pergunta"].toString()),
        ...respostas
            .map(
              (resp) => Resposta(
                onPressed: () => responder(int.parse(resp['nota'].toString())),
                texto: resp["texto"] as String,
              ),
            )
            .toList(),
      ],
    );
  }
}
