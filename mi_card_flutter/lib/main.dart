import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}
// stless and enter
// hotReload runs build only for each change
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(   // use safe area to keep text away from notch or edges
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children:<Widget>[
              CircleAvatar(
                radius:50.0,
                backgroundColor: Colors.amberAccent,
                backgroundImage: AssetImage('images/download.jpg'),
              ),
              Text('Aashi Dutt',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,

                ),
              ),
              Text('FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                color:Colors.white,
                fontWeight: FontWeight.bold,
              )),
              SizedBox(
                height:20.0,
                width:150.0,
                child:Divider(
                  color:Colors.white70,
                )
              ),
              Card(
                margin:EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading:Icon(Icons.phone,
                      size:30.0,
                      color:Colors.teal),
                  title: Text('+91 123-456-678',
                    style:TextStyle(
                      color:Colors.black87,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,

                    ),
                  )
                )
              ),
              Card(
                margin:EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child:ListTile(
                  leading:Icon(
                      Icons.email,
                      size:30.0,
                      color: Colors.teal
                  ),
                  title:Text(' aashi_dutt@gmail.com',
                    style:TextStyle(
                      color:Colors.black87,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),

                )
              )

            ]
          ) ,
        ),
      ),
    );
  }
}

