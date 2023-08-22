import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff19191A),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(thickness: 1, color: Colors.grey[700]),
    );
  }
}
