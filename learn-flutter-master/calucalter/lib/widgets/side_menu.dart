import 'package:calucalter/widgets/custom_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff19191A),
      child: Column(
        children: [
          const SizedBox(height: 20),
          SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: ListTile(
                title: const Text(
                  'Opciones',
                  style: TextStyle(
                      color: Colors.white, fontSize: 25, fontFamily: 'Oxanium'),
                ),
                trailing: IconButton(
                    splashRadius: 25,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon:
                        const Icon(Icons.close, color: Colors.white, size: 28)),
              ),
            ),
          ),
          const CustomDivider(),
          const SizedBox(height: 20),
          const _ListTileOption(
            text: 'options',
            icon: FaIcon(FontAwesomeIcons.calculator,
                color: Colors.white, size: 28),
          ),
          const _ListTileOption(
            text: ' stteings',
            icon: Icon(
              Icons.science,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class _ListTileOption extends StatelessWidget {
  const _ListTileOption({super.key, required this.text, required this.icon});

  final String text;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: text == 'option' ? const EdgeInsets.only(left: 5) : null,
      // color: Colors.red,
      child: ListTile(
        leading: icon,
        title: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontFamily: 'Oxanium'),
        ),
      ),
    );
  }
}
