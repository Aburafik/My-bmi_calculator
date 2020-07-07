import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.weight,this.height});
  final int  height;
  final int weight ;
  double _bmi;

  String calculateBMI(){
     _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult(){
    if(_bmi>=25){
      return 'OverWeight';
    }else if(_bmi>18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }

  String interpretBMI(){
    if(_bmi>=25){
      return 'Your bmi is very high your have to do alot of exercise';
    }else if(_bmi>18.5){
      return 'Your have a normal BmI Keep it up';
    }else{
      return 'Your BMI is very low you have to eat more food';
    }
  }
}