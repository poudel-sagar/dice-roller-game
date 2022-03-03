import 'package:diceroller/homepage.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  title: "Dice Roller Game",
  theme: ThemeData.dark(),
  home: DiceApp()
));

class DiceApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Dice Roller"),
    ),
    body: HomePage(),
  );
  }
}