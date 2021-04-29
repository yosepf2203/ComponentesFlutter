import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(children: _crearItemsCorto()
          /*children: <Widget>[
            ListTile(
              title: Text("ListTitle"),
            ),
            Divider(),
            ListTile(
              title: Text("ListTitle"),
            ),
            ListTile(
              title: Text("ListTitle"),
            ),*/

          ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>(); //Lista dinamica sin tamaño

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      //lista.add(tempWidget)
      //lista.add(Divider());
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}