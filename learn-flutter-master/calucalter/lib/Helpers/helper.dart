
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../providers/provider.dart';

class Helper {
  static void setFirstNumberOperatorHistory(
      InputProvider controller, String operador) {
    controller.arithmeticOperador = operador;

    controller.firstNumber =
        double.parse(controller.controller.text.replaceAll(",", ""));
    controller.history = controller.controller.text + operador;
    controller.controller.text = '';
  }

  static void setSecondNumber(InputProvider controller) {
    if (controller.controller.text.isNotEmpty) {
      controller.secondNumber = double.parse(
        controller.controller.text.replaceAll(",", "").substring(
            controller.controller.text.indexOf(controller.arithmeticOperador) +
                1),
      );
      controller.isSecondNumber = false;
    }
  }

  static void calculateResult(InputProvider controller, String operador) {
    controller.history += controller.controller.text + operador;

    if (controller.arithmeticOperador == "+") {
      controller.resultado = controller.firstNumber + controller.secondNumber;
      if (controller.resultado.toString().endsWith(".0")) {
        controller.controller.text = formatNumber(controller.resultado);
      } else {
        controller.controller.text =
            formatNumberWithDecimal(controller.resultado);
      }
    }
    if (controller.arithmeticOperador == "-") {
      controller.resultado = controller.firstNumber - controller.secondNumber;
      if (controller.resultado.toString().endsWith(".0")) {
        controller.controller.text = formatNumber(controller.resultado);
      } else {
        controller.controller.text =
            formatNumberWithDecimal(controller.resultado);
      }
    }
    if (controller.arithmeticOperador == "x") {
      controller.resultado = controller.firstNumber * controller.secondNumber;
      if (controller.resultado.toString().endsWith(".0")) {
        controller.controller.text = formatNumber(controller.resultado);
      } else {
        controller.controller.text =
            formatNumberWithDecimal(controller.resultado);
      }
    }
    if (controller.arithmeticOperador == "/") {
      controller.resultado = controller.firstNumber / controller.secondNumber;
      controller.controller.text =
          controller.resultado.toString().endsWith(".0")
              ? formatNumber(controller.resultado)
              : formatNumberWithDecimal(controller.resultado);
    }
    if (controller.arithmeticOperador == "%") {
      controller.resultado =
          controller.firstNumber * controller.secondNumber / 100;
      controller.controller.text =
          controller.resultado.toString().endsWith(".0")
              ? formatNumber(controller.resultado)
              : formatNumberWithDecimal(controller.resultado);
    }
    controller.totalHistory
        .add(controller.history + controller.controller.text);
  }

  static Future<dynamic> showModal(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => const Text(
        'No sese stteing',
        style: TextStyle(fontSize: 25, fontFamily: 'Oxanium'),
      ),
    );
  }

  static String formatNumber(double value) {
    var newValue = value.toString();
    NumberFormat myFormat = NumberFormat('#,###');

    if (newValue.endsWith(".0")) {
      return myFormat.format(value);
    } else {
      return newValue;
    }
  }

  static String formatNumberWithDecimal(double value) {
    var floatNumber = value.toString().split(".");
    NumberFormat firstFormat = NumberFormat('#,###.0');
    NumberFormat secondFormat = NumberFormat('#,###.000000');

    if (floatNumber[1].length > 1) {
      if (floatNumber[1].contains('000000')) {
        var decimalNumber = floatNumber[1].replaceAll('0', '');
        return '${floatNumber[0]}.$decimalNumber';
        // return firstFormat.format(value);
      }

      if (floatNumber[1].length == 2) {
        return '$value';
      }

      var result = secondFormat.format(value).split('.');
      return '${result[0] == "" ? 0 : result[0]}.${result[1].replaceAll('0', '')}';

      // var start = floatNumber.indexOf("0");
      // var last = floatNumber.lastIndexOf("0");
      // print(floatNumber);
      // print(floatNumber.substring(start, last + 1));
    } else {
      var result = firstFormat.format(value).split('.');
      return '${result[0] == "" ? 0 : result[0]}.${result[1]}';
    }
  }
}
