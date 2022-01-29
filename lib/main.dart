import 'dart:math';

import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    );
  }
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  void dicechangeface(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('DiceApp', style: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        elevation: 30,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton (
                onPressed: (){
                  dicechangeface();
                },
                child: Image(
                  image: AssetImage( 'images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: FlatButton (
                onPressed: (){
                  dicechangeface();
                },
                child: Image(
                  image: AssetImage( 'images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}