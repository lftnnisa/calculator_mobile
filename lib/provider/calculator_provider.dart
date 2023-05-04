import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider extends ChangeNotifier {
  String history = '';
  String expression = '';

  void operatorClick(String text) {
    if (text == 'AC') {
      allClear();
    } else if (text == 'DEL') {
      delete();
    } else if (text == '=') {
      calculate();
    } else if (text == '×') {
      expression += '*';
      notifyListeners();
    } else if (text == '÷') {
      expression += '/';
      notifyListeners();
    } else if (text == 'x²') {
      expression += '^';
      notifyListeners();
    }
    else {
      expression += text;
      notifyListeners();
    }
  }

  void calculate() {
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    double result = double.parse(eval.toStringAsFixed(2));

    history = expression;
    expression = result.toString();
    if (expression.endsWith('.0')) {
      expression = expression.replaceAll('.0', '');
    }
    notifyListeners();
  }

  void allClear() {
    expression = '';
    history = '';
    notifyListeners();
  }

  void delete() {
    expression = expression.substring(0, expression.length - 1);
    notifyListeners();
  }
}
