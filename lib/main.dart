import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.cyan[700],
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.cyan[900],
            title: Text('Ask Me Anything',style: TextStyle(color: Colors.white),),
          ),
          body: Ballucky(),
        ),
      ),
    );

class Ballucky extends StatefulWidget {
  @override
  _BalluckyState createState() => _BalluckyState();
}

class _BalluckyState extends State<Ballucky> {
  int num =1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
          child: Row(
            children: <Widget>[
         Expanded(
          child: FlatButton(
            onPressed: (){
              setState(() {
                num = Random().nextInt(5)+1;
              });
            },
            child: Image.asset('images/ball$num.png'),
          ),
      ),
    ],
    ),
        ));
  }
}
