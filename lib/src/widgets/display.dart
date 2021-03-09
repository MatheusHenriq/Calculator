import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget {
  String text='';
  Display({this.text});
  
  @override

  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding : EdgeInsets.only(top: 100, right: 40),
        color : Colors.grey[800],
        height : 100,
        child : AutoSizeText(
          text,
          maxLines: 4,
          style : kDisplayTextStyle,
          textAlign: TextAlign.right,
          maxFontSize: kmaxTextFontSize,
          minFontSize: 20,
        ),
      ),
    );
  }
}