import 'package:flutter/material.dart';

class AttractionsScreen extends StatelessWidget {
  const AttractionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atracciones"),
        backgroundColor: Colors.yellow[700],
      ),
      body: const Center(
        child: Text("Estas son las atracciones de de Warner Beach"),
      ),
    );
  }
}
