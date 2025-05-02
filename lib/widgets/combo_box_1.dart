import 'package:flutter/material.dart';

class ComboBox1 extends StatefulWidget {
  final String? valorSelecionado;
  final ValueChanged<String?> onChanged;

  const ComboBox1({
    Key? key,
    this.valorSelecionado,
    required this.onChanged,
  }) : super(key: key);

  @override
  _ComboBox1State createState() => _ComboBox1State();
}

class _ComboBox1State extends State<ComboBox1> {
  final List<String> opcoes = ['Opção A', 'Opção B', 'Opção C'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: widget.valorSelecionado,
      items: opcoes.map((opcao) {
        return DropdownMenuItem<String>(
          value: opcao,
          child: Text(opcao),
        );
      }).toList(),
      onChanged: widget.onChanged,
      decoration: InputDecoration(labelText: 'ComboBox 1'),
    );
  }
}