import 'package:flutter/material.dart';
import 'package:flutter_app/widget/myTextField.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
            child: Column(children: <Widget>[
          new MyTextField(label: 'Login'),
          new MyTextField(obscureText: true, label: 'Senha',),
        ])));
  }
}
