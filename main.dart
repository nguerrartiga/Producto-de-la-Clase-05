import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Diceec5'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int nDi =1;
  int nDd =2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  nDi=Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$nDi.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  nDd=Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$nDd.png'),
            ),
          ),
        ],),
    );
  }
}