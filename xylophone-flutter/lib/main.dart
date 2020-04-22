import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
// function for playing sounds
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
// function for buttons and sound playing
   Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color:Colors.red, soundNumber: 1),
              buildKey(color:Colors.orange, soundNumber: 2),
              buildKey(color:Colors.yellowAccent, soundNumber: 3),
              buildKey(color:Colors.tealAccent, soundNumber: 4),
              buildKey(color:Colors.lightBlueAccent, soundNumber: 5),
              buildKey(color:Colors.purpleAccent, soundNumber: 6),
              buildKey(color:Colors.pink, soundNumber: 7),

            ],
          ),
        ),
      ),
    );
  }
}
