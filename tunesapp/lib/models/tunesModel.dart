import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class tuneModel {
  Color? color;
  String Sound;

  tuneModel({required this.Sound, required this.color});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(Sound));
  }
}
