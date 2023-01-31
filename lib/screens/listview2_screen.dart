import 'package:flutter/material.dart';
import 'listview1_screen.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: libros.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.book),
          title: Text(libros[index]),
          trailing: const Icon(Icons.keyboard_arrow_right_rounded),
          onTap: () => {},
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
