import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {this.label, this.readOnly: false, this.obscureText: false});

  final String label;
  final bool readOnly;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 15),
        child: TextField(
          obscureText: this.obscureText,
          readOnly: this.readOnly,
          decoration: InputDecoration(labelText: this.label),
        ));
  }
}
