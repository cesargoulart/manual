import 'package:flutter/material.dart';
import '../widgets/combo_box_1.dart';
import '../widgets/combo_box_2.dart';
import '../widgets/input_texto.dart';
import '../components/botao_enviar.dart';

class FormularioView extends StatefulWidget {
  @override
  _FormularioViewState createState() => _FormularioViewState();
}

class _FormularioViewState extends State<FormularioView> {
  String? _combo1;
  String? _combo2;
  final TextEditingController _textoCtrl = TextEditingController();
  String _resultado = '';

  void _enviar() {
    setState(() {
      _resultado = 'Você selecionou:\n'
          'ComboBox 1: $_combo1\n'
          'ComboBox 2: $_combo2\n'
          'Texto digitado: ${_textoCtrl.text}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: ComboBox1(
                valorSelecionado: _combo1,
                onChanged: (valor) => setState(() => _combo1 = valor),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: ComboBox2(
                valorSelecionado: _combo2,
                onChanged: (valor) => setState(() => _combo2 = valor),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        InputTexto(controller: _textoCtrl),
        SizedBox(height: 24),
        BotaoEnviar(onPressed: _enviar),
        SizedBox(height: 24),
        Text(_resultado, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}