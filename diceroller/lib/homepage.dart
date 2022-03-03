//import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:web_ffi/web_ffi.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int imageNumber;
  @override
  void initState(){
    super.initState();
    setState(() {
          rollDice();
        });
  }
   rollDice(){
    int random=(Random().nextInt(6))+1;
    setState(() {
          imageNumber=random;
        });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "img/$imageNumber.png",
            width: 200.0,
          ),
          
          Container(
            height: 50,
            width:MediaQuery.of(context).size.width*0.8,
            child: FlatButton(
              color: Colors.indigo,
              onPressed: ()=>rollDice(), child: Text('Roll Dice', style: TextStyle(fontSize:20),)),
          )
        ],
      ),
    ));
  }
}
