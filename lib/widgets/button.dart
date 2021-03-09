import 'package:flutter/material.dart';

import '../constants.dart';

class ButtonKey extends StatelessWidget {
  final String label;
  final int flex;
  final Color color;
  Widget iconChild = null;
  final String Function(String) onTapKey;
  ButtonKey({this.label, this.onTapKey, this.flex, this.color, this.iconChild});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex : flex,
      child: Material(
        shadowColor: kshadowColor,
        color : color,
        child : SizedBox(
          height: 100,
          width : 50,
          child: InkWell(       
            child : Center(             
              child: iconChild == null ? Text(
                label,
                style : kButtonKeyTextStyle
              ) : iconChild,
            ),
            onTap : (){
              onTapKey(label);
            },
            splashColor: khighlightColor,   
          ),
        ),
      ),
    );
  }
}