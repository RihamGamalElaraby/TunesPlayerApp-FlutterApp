import 'package:flutter/material.dart';
import 'package:tunesapp/models/tunesModel.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({required this.tune});
  final tuneModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
