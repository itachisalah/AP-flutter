import 'package:calucalter/widgets/buttons.dart';
import 'package:calucalter/widgets/custom_divider.dart';
import 'package:calucalter/widgets/header.dart';
import 'package:calucalter/widgets/input_area.dart';
import 'package:calucalter/widgets/side_menu.dart';


import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292929),
      drawer: const SideMenu(),
      body: Stack(
        children: [
          Column(
            children: const [
              Expanded(flex: 2, child: InputArea()),
              CustomDivider(),
              Expanded(flex: 3, child: Buttons()),
            ],
          ),
          const Header(),
        ],
      ),
    );
  }
}
