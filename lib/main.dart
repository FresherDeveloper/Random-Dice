import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Center(
        child: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            title: Text('Dice'),
            backgroundColor: Colors.green,
          ),
          body: DicePage1(),
        ),
      ),
    ),
  );
}

class DicePage1 extends StatefulWidget {
  @override
  _DicePage1State createState() => _DicePage1State();
}

class _DicePage1State extends State<DicePage1> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    elevation: 0,
                  ),
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
            Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    elevation: 0,
                  ),
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            ),
          ],
        ),
        leftDiceNumber == rightDiceNumber
            ? Container(
                margin: EdgeInsets.only(top: 30.0),
                decoration: ShapeDecoration(
                  shape: Border.all(width: 2.0),
                  // color: Colors.black,
                ),
                child: Image.network(
                  'https://th.bing.com/th/id/OIP.BeTON7XRSjv49NcnATmDHQHaE8?w=274&h=183&c=7&r=0&o=5&pid=1.7',
                  fit: BoxFit.cover,
                  width: 150,
                ),
              )
            : Container(
                margin: EdgeInsets.only(top: 30.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.xEePlRE0sgNm05xPK3cRcAHaHa?w=185&h=185&c=7&r=0&o=5&pid=1.7',
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      ],
    );
  }
}
