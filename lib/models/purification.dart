import 'dart:io';

import 'package:math_expressions/math_expressions.dart';

class Purification{

  String _value = '';
  Parser _p = Parser();
  Expression _result;
  var _resultParse;
  int _cleaner = 0;
  ContextModel _a;

  String get value => _value;

  void expressionBuilder(String key){
    if(key == 'C'){  
      _expressionCleaner();     
    }
    else if(key == 'eraser'){
      _expressionExcludeLastDigit();
     
    }
    else if (key == '='){
      _expressionResult();
      
    }
    
    else{
      print('numput');
      if(_cleaner==1){
        if(key != '+' && key != '-' && key != '/' && key != '%' && key != 'x' ) 
          _expressionCleaner(); 
                                                                  
      }
      _cleaner = 0;   
      _addDigit(key);     
    }

    
  }

  void _expressionCleaner(){  
    _value = '';
  }

  void _expressionExcludeLastDigit(){  
    _value  = _value.substring(0,_value.length-1);
  }

  void _addDigit(String key){
      _value += key;
    
  }

  void _expressionResult(){
    _value = _value.replaceAll(',', '.');
    _value = _value.replaceAll('x', '*');

    _result = _p.parse(_value);
    _resultParse = _result.evaluate(EvaluationType.REAL, _a);
    _value = _resultParse.toString();

    _value = _value.replaceAll('.', ',');
    _cleaner = 1;
    print(_cleaner);

  }




}