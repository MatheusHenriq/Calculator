import 'package:calculator/src/themes/constants.dart';
import 'package:calculator/src/widgets/button.dart';
import 'package:calculator/src//widgets/buttonrow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KeyBoard extends StatelessWidget {
  final Function(String) onPressedKey;
  KeyBoard({this.onPressedKey});
  @override
  Widget build(BuildContext context) {
    return Container(
      child : Column(
        children: [
            ButtonRow([ 
              ButtonKey(label : 'C', onTapKey: onPressedKey, flex:25, color : ktoprowColor),          
              ButtonKey(label : 'eraser' ,iconChild : Icon(Icons.phonelink_erase_sharp), onTapKey: onPressedKey, flex:25, color : ktoprowColor),            
              ButtonKey(label : '%', onTapKey: onPressedKey, flex:25, color : ktoprowColor),
              ButtonKey(label : '/', onTapKey: onPressedKey, flex:25, color : kleftcolumnColor)
            ]
            ),
            SizedBox(height:1),
            ButtonRow([
              ButtonKey(label : '7', onTapKey: onPressedKey, flex:25),
              ButtonKey(label : '8', onTapKey: onPressedKey, flex:25),
              ButtonKey(label : '9', onTapKey: onPressedKey, flex:25),
              ButtonKey(label : 'x', onTapKey: onPressedKey, flex:25, color : kleftcolumnColor)
            ]
            ),
                      SizedBox(height:1),
            ButtonRow([
              ButtonKey(label : '4', onTapKey: onPressedKey, flex:25),
              ButtonKey(label : '5', onTapKey: onPressedKey, flex:25),
              ButtonKey(label : '6', onTapKey: onPressedKey, flex:25),
              ButtonKey(label : '-', onTapKey: onPressedKey, flex:25, color : kleftcolumnColor)
            ]
            ),
            SizedBox(height:1),
            ButtonRow([
              ButtonKey(label : '1', onTapKey: onPressedKey, flex:25),
              ButtonKey(label : '2', onTapKey: onPressedKey, flex:25),
              ButtonKey(label : '3', onTapKey: onPressedKey, flex:25),
              ButtonKey(label : '+', onTapKey: onPressedKey, flex:25, color : kleftcolumnColor)
            ]
            ),
            SizedBox(height:1),
            ButtonRow([
              SizedBox(width:1),
              ButtonKey(label : '0', onTapKey: onPressedKey, flex:50),              
              ButtonKey(label : ',', onTapKey: onPressedKey, flex:25),
              ButtonKey(label : '=', onTapKey: onPressedKey, flex:25, color : kleftcolumnColor), 
            ]
            ),
          ],
        ),
    );
  }
}