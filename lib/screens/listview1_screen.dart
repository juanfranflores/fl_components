import 'package:flutter/material.dart';

const libros = [
  'Operacion Masacre',
  'Nuestra parte de noche',
  'Historias de Cronopios y Famas',
];

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(children: [
        ...libros
            .map(
              (e) => ListTile(
                leading: const Icon(Icons.book),
                title: Text(e),
                trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              ),
            )
            .toList()
      ]),
    );
  }
}
