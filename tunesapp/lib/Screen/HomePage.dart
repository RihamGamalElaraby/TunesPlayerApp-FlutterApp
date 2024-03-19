import 'package:flutter/material.dart';
import 'package:tunesapp/Widgets/tuneItem.dart';
import 'package:tunesapp/models/tunesModel.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<tuneModel> tunes = [
    tuneModel(
      Sound: 'note1.wav',
      color: Colors.red,
    ),
    tuneModel(
      Sound: 'note2.wav',
      color: Colors.yellow,
    ),
    tuneModel(
      Sound: 'note3.wav',
      color: Colors.orange,
    ),
    tuneModel(
      Sound: 'note4.wav',
      color: Colors.green,
    ),
    tuneModel(
      Sound: 'note5.wav',
      color: Colors.blue,
    ),
    tuneModel(
      Sound: 'note6.wav',
      color: Colors.purple,
    ),
    tuneModel(
      Sound: 'note7.wav',
      color: Colors.grey,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text(
            'Flutter Tune',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: tunes
              .map(
                (e) => TuneItem(
                  tune: e,
                ),
              )
              .toList(),
        ));
  }
}
