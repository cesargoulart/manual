import 'package:flutter/material.dart';
import 'views/formulario_view.dart';

void main() {
  runApp(FormularioApp());
}

class FormularioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário Modular',
      home: Scaffold(
        appBar: AppBar(title: Text('Formulário')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormularioView(),
        ),
      ),
    );
  }
}