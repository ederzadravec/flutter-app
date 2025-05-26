import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int nota;
  final void Function() restart;

  Resultado({required this.nota, required this.restart});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            "Parabéns, sua nota é $nota",
            style: TextStyle(fontSize: 28),
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: restart,
            child: Text("Reiniciar", style: TextStyle(color: Colors.red)),
          ),
        ),
      ],
    );
  }
}
