import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

    void playSound(int noteNumber) {
      audioPlayer.open(
        Audio("assets/note$noteNumber.wav"),
      );
    }

    Expanded buildKey(Color color, int noteNumber) => Expanded(
          child: Container(
            color: color,
            child: TextButton(
              onPressed: () => playSound(noteNumber),
              child: Text(''),
            ),
          ),
        );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.lightGreen, 4),
              buildKey(Colors.green.shade800, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
