import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 5),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 3, right: 5),
              child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const Text(
              'settings',
              style: TextStyle(
                  color: Colors.white, fontSize: 28, fontFamily: 'Oxanium'),
            )
          ],
        ),
      ),
    );
  }
}
