import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Tune extends StatelessWidget {
  final int color;
  final String assetName;
  final player = AudioPlayer();

  Tune({super.key, required this.color, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Color.fromARGB(31, 80, 64, 64),
      child: Ink(
        color: Color(color),
      ),
      onTapDown: (_) {
        player.play(AssetSource(assetName));
      },
    );
  }
}
