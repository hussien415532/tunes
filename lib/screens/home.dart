import 'package:flutter/material.dart';
import 'package:tunes/components/tune.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List<int> hexColors = [
    0xFF3498DB, // Dodger Blue
    0xFFE74C3C, // Alizarin
    0xFF2ECC71, // Emerald
    0xFFF39C12, // Orange
    0xFF9B59B6, // Amethyst
    0xFF1ABC9C, // Turquoise
    0xFFE67E22, // Carrot
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 93, 93, 99),
        title: const Text('Tunes App', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          for (int i = 0; i < 7; i++)
            Expanded(
              child: Tune(
                assetName: 'tunes/note${i + 1}.wav',
                color: hexColors[i],
              ),
            )
        ],
      ),
    );
  }
}
