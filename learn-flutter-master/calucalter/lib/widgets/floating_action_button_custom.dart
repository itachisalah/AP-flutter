import 'package:calucalter/Helpers/helper.dart';
import 'package:calucalter/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FloatingActionButtonCustom extends StatelessWidget {
  final dynamic content;
  final Color color;
  final String value;
  const FloatingActionButtonCustom({
    super.key,
    required this.content,
    // this.color = const Color.fromARGB(255, 77, 75, 75),
    this.color = const Color(0xff2D2D2E),
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final inputProvider = Provider.of<InputProvider>(context);

    return FloatingActionButton(
      backgroundColor: color,
      highlightElevation: 0,
      elevation: 0,
      child: content,
      onPressed: () {
        if (value == '()' || value == '+/-') return;

        if (value == "C") {
          inputProvider.cleanInput();
        } else {
          if (inputProvider.controller.text.length >= 19) {
            if (value == "+" ||
                value == "-" ||
                value == "x" ||
                value == "/" ||
                value == "%") {
              Helper.setFirstNumberOperatorHistory(inputProvider, value);
              inputProvider.isFirstNumber = false;
              return;
            }
            Helper.showModal(context);
            return;
          }
          if (inputProvider.controller.text.length > 14) {
            inputProvider.isLarger = true;
          } else {
            inputProvider.isLarger = false;
          }

          if (value == ".") {
            inputProvider.controller.text += value;
            return;
          }

          if (value == "+" ||
              value == "-" ||
              value == "x" ||
              value == "/" ||
              value == "%") {
            Helper.setFirstNumberOperatorHistory(inputProvider, value);
            inputProvider.isFirstNumber = false;
            return;
          }

          if (value == "=" && inputProvider.isFirstNumber == true) return;

          if (value == "=" && inputProvider.isFirstNumber == false) {
            Helper.setSecondNumber(inputProvider);

            if (inputProvider.isSecondNumber == true) return;

            if (inputProvider.secondNumber.toString().isNotEmpty) {
              Helper.calculateResult(inputProvider, value);
              inputProvider.isFirstNumber = true;
              inputProvider.isSecondNumber = true;
              if (inputProvider.controller.text.length > 14) {
                inputProvider.isLarger = true;
              } else {
                inputProvider.isLarger = false;
              }
            }

            if (inputProvider.controller.text.length >= 20) {
              inputProvider.controller.text =
                  inputProvider.resultado.toStringAsExponential();
            }
            return;
          }

          inputProvider.controller.text += value;

          if (inputProvider.controller.text.endsWith('.0')) return;

          inputProvider.controller.text = Helper.formatNumber(
            double.parse(inputProvider.controller.text.replaceAll(",", "")),
          );
        }
      },
    );
  }
}
