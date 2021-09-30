import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.grey[800],
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
  int rightDiceNumber = 1;
  int leftDiceNumber=1;
  int i=0;

  void onPressFunc(){
    setState(() {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: (){
                      onPressFunc();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')
                )
              ),

              Expanded(
                  child: TextButton(
                      onPressed: (){
                        onPressFunc();
                      },
                      child: Image.asset('images/dice$rightDiceNumber.png')
                  )
              ),
            ],
          ),
    );
  }
}


