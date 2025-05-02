import 'package:flutter/material.dart';
import 'views/formulario_view.dart';

void main() {
  runApp(FormularioApp());
}

class FormularioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário Escuro',
      theme: ThemeData.dark().copyWith(
        // Cor de fundo da tela
        scaffoldBackgroundColor: Colors.black,
        // Cor primária (usada em botões, checkboxes, etc)
        primaryColor: Colors.deepPurpleAccent,
        // Estilo do texto do AppBar
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white, // cor do título do AppBar
          backgroundColor: Colors.grey[900], // cor de fundo do AppBar
        ),
        // Cor do texto padrão
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        // DropdownButtonFormField tema escuro
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white70),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurpleAccent),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white30),
          ),
        ),
      ),
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