import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cortazar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              child: Text('Stan Lee'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          foregroundImage: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/1/19/Cort%C3%A1zar.jpg'),
          maxRadius: 100,
        ),
      ),
    );
  }
}
