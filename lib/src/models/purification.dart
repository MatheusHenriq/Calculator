import 'dart:io';
import 'package:math_expressions/math_expressions.dart';

class Purification{

  List<String> operations = ['+','-','/','%'];
  String _value = '';
  Parser _p = Parser();
  Expression _result;
  var _resultParse;
  int _countOperations = 0;
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
      _value.endsWith(',0') ? _value = _value.substring(0,_value.indexOf(',')) : _value = _value;
    }
    
    else{    
      if(_cleaner==1){
        if(key != '+' && key != '-' && key != '/' && key != '%' && key != 'x' && key != ',' ) 
          _expressionCleaner();
          _addDigit(key);                                                                  
      }
      else if(
        key == '+' ||
        key == '-' ||
        key == 'x' ||
        key == '/' ||
        key == ',' ||
        key == '%' )
        {
          if( _value.substring(_value.length-1,_value.length) != '+' &&
              _value.substring(_value.length-1,_value.length) != '-' &&
              _value.substring(_value.length-1,_value.length) != 'x' &&
              _value.substring(_value.length-1,_value.length) != '/' &&
              _value.substring(_value.length-1,_value.length) != '%' &&
              _value.substring(_value.length-1,_value.length) != ','  )
          {

            if(key == ','){
              for(String item in operations){
                _countOperations = item.allMatches(_value).length;
              }
              if((_countOperations + 1) >= (','.allMatches(_value).length)){
                _addDigit(key);
              }
            }  
            else{
              _addDigit(key);
            } 
          } 

        }
      else{
        _addDigit(key);
      } 
      _cleaner = 0;  
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
  }




}