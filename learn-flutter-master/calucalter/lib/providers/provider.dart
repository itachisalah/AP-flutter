import 'package:flutter/material.dart';

class InputProvider extends ChangeNotifier {
  final TextEditingController _controller = TextEditingController(text: '');

  double _firstNumber = 0;
  double _secondNumber = 0;
  double _resultado = 0;
  String _arithmeticOperador = '';
  String _history = '';
  bool _isFirstNumber = true;
  bool _isSecondNumber = true;
  String _input = '';
  List<String> _totalHistory = [];
  bool _isLarger = false;

  TextEditingController get controller => _controller;

  double get firstNumber => _firstNumber;

  double get secondNumber => _secondNumber;

  double get resultado => _resultado;

  String get arithmeticOperador => _arithmeticOperador;

  String get history => _history;

  bool get isFirstNumber => _isFirstNumber;

  bool get isSecondNumber => _isSecondNumber;

  String get input => _input;

  List<String> get totalHistory => _totalHistory;

  bool get isLarger => _isLarger;

  set controller(TextEditingController controller) {
    _controller.text = controller.text;
    notifyListeners();
  }

  set firstNumber(double value) {
    _firstNumber = value;
    notifyListeners();
  }

  set secondNumber(double value) {
    _secondNumber = value;
    notifyListeners();
  }

  set resultado(double value) {
    _resultado = value;
    notifyListeners();
  }

  set arithmeticOperador(String value) {
    _arithmeticOperador = value;
    notifyListeners();
  }

  set history(String value) {
    _history = value;
    notifyListeners();
  }

  set isFirstNumber(bool value) {
    _isFirstNumber = value;
    notifyListeners();
  }

  set isSecondNumber(bool value) {
    _isSecondNumber = value;
    notifyListeners();
  }

  set input(String value) {
    _input = value;
    notifyListeners();
  }

  set totalHistory(List<String> value) {
    _totalHistory = value;
    notifyListeners();
  }

  set isLarger(bool value) {
    _isLarger = value;
    notifyListeners();
  }

  cleanInput() {
    _controller.text = '';
    _firstNumber = 0;
    _secondNumber = 0;
    _resultado = 0;
    _arithmeticOperador = '';
    _history = '';
    notifyListeners();
  }
}
