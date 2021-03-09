import 'package:calculator/src/models/purification.dart';
import 'package:calculator/src/widgets/display.dart';
import 'package:calculator/src/widgets/keyboard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Purification purificationExpression = Purification();

  void setText(String key){
    setState(() {
      purificationExpression.expressionBuilder(key);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color : Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Display(text:purificationExpression.value),           
          KeyBoard(onPressedKey : setText),
        ],
      ),
    );
  }
}