import 'package:flutter/material.dart';

class ComboBox2 extends StatefulWidget {
  final String? valorSelecionado;
  final ValueChanged<String?> onChanged;

  const ComboBox2({
    Key? key,
    this.valorSelecionado,
    required this.onChanged,
  }) : super(key: key);

  @override
  _ComboBox2State createState() => _ComboBox2State();
}

class _ComboBox2State extends State<ComboBox2> {
  final List<String> opcoes = ['X', 'Y', 'Z'];

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
      decoration: InputDecoration(labelText: 'ComboBox 2'),
    );
  }
}