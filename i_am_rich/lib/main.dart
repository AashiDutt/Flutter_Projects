import 'package:flutter/material.dart';
// the main function is starting point of my app.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('I AM RICH')),
          backgroundColor: Colors.blueGrey[900],
        ),
        body:Center(
          child: Image(
            image: AssetImage('images/ruby.jpg'),
          ),
        ),
      ),
    ),
  );
}