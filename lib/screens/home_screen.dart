import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.access_time_outlined),
            title: const Text('nombre de ruta'),
            onTap: () {
              Navigator.pushNamed(context, 'card');
            },
          );
        },
        separatorBuilder: (BuildContext _, int __) {
          return const Divider();
        },
      ),
    );
  }
}
