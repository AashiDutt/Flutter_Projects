import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage()
      ),
    );
class Ball extends StatefulWidget {

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            ballNumber = Random().nextInt(4) + 1;
          });
          //print('I got Clicked');
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),

    );
  }
}


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Center(child: Text('Ask Me Anything'),
        ),
        backgroundColor: Colors.blue[700],
      ),
      body: Ball(),
    );
  }
}
