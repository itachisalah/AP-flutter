
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/floating_action_button_custom.dart';

class Constants {
  static const customButtons = [
    FloatingActionButtonCustom(
        content:
            Text('C', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        color: Color.fromARGB(255, 105, 36, 36),
        value: 'C'),
    FloatingActionButtonCustom(
        content:
            Text('()', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        color: Color.fromARGB(255, 59, 99, 97),
        value: '()'),
    FloatingActionButtonCustom(
        content: FaIcon(FontAwesomeIcons.percent, size: 27),
        color: Color.fromARGB(255, 59, 99, 97),
        value: '%'),
    FloatingActionButtonCustom(
        content: FaIcon(FontAwesomeIcons.divide, size: 30),
        color: Color.fromARGB(255, 59, 99, 97),
        value: '/'),
    FloatingActionButtonCustom(
        content:
            Text('7', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '7'),
    FloatingActionButtonCustom(
        content:
            Text('8', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '8'),
    FloatingActionButtonCustom(
        content:
            Text('9', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '9'),
    FloatingActionButtonCustom(
        content: FaIcon(FontAwesomeIcons.xmark, size: 30),
        color: Color.fromARGB(255, 59, 99, 97),
        value: 'x'),
    FloatingActionButtonCustom(
        content:
            Text('4', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '4'),
    FloatingActionButtonCustom(
        content:
            Text('5', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '5'),
    FloatingActionButtonCustom(
        content:
            Text('6', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '6'),
    FloatingActionButtonCustom(
        content: FaIcon(FontAwesomeIcons.minus, size: 30),
        color: Color.fromARGB(255, 59, 99, 97),
        value: '-'),
    FloatingActionButtonCustom(
        content:
            Text('1', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '1'),
    FloatingActionButtonCustom(
        content:
            Text('2', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '2'),
    FloatingActionButtonCustom(
        content:
            Text('3', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '3'),
    FloatingActionButtonCustom(
        content: FaIcon(FontAwesomeIcons.plus, size: 30),
        color: Color.fromARGB(255, 59, 99, 97),
        value: '+'),
    FloatingActionButtonCustom(
        content:
            Text('+/-', style: TextStyle(fontSize: 30, fontFamily: 'Oxanium')),
        color: Color(0xff212121),
        value: '+/-'),
    FloatingActionButtonCustom(
        content:
            Text('0', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '0'),
    FloatingActionButtonCustom(
        content:
            Text('.', style: TextStyle(fontSize: 35, fontFamily: 'Oxanium')),
        value: '.'),
    FloatingActionButtonCustom(
        content: FaIcon(FontAwesomeIcons.equals, size: 30),
        color: Color.fromARGB(255, 50, 131, 127),
        value: '='),
  ];
}
