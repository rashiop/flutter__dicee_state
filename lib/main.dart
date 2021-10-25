import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  int leftDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    leftDiceNumber = 2;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left dice rolled');
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          SizedBox(width: 20.0),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right dice rolled');
              },
              child: Image.asset(
                'images/dice2.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
