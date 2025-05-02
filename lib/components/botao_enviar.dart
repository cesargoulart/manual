import 'package:flutter/material.dart';

class BotaoEnviar extends StatelessWidget {
  final VoidCallback onPressed;

  const BotaoEnviar({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Enviar'),
    );
  }
}