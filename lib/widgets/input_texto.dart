import 'package:flutter/material.dart';

class InputTexto extends StatelessWidget {
  final TextEditingController controller;

  const InputTexto({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: 'Digite algo'),
    );
  }
}