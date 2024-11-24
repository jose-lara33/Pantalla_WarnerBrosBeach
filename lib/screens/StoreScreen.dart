import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tienda'),
        backgroundColor: Colors.yellow,
      ),
      body: const Center(
        child: Text(
          'Contenido de la tienda',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
