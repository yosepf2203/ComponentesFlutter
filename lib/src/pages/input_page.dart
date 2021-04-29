import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs personalizados'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          children: <Widget>[_crearinput(), Divider(), _repintar()],
        ));
  }

  Widget _crearinput() {
    return TextField(
        //autofocus: true,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
            counter: Text('caracteres 0'),
            hintText: 'Nombre completo',
            labelText: 'Nombre',
            helperText: 'solo letras',
            suffixIcon: Icon(Icons.accessibility),
            icon: Icon(Icons.account_circle),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
        onChanged: (valor) {
          setState(() {
            _nombre = valor;
            print(_nombre);
          });
        });
  }

  Widget _repintar() {
    return ListTile(title: Text('Su nombre es $_nombre'));
  }
}
