import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  List<Widget> buttons;
  int x = 0;
  ButtonRow(this.buttons);
  @override
  Widget build(BuildContext context) {
    return Row(
      children : buttons.fold(<Widget>[],(keys, btn){
        if (keys.isEmpty)
          keys.add(btn);
        else
          keys.addAll([SizedBox(width:1),btn]);
        return keys;
      })
      
    );
  }
}