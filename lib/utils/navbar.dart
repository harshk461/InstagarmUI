import 'package:flutter/material.dart';

class NavbarUI extends StatelessWidget {
  const NavbarUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      primary: false,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      title: const Text(
        "Instagram",
        style: TextStyle(
          fontSize: 25.0,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_box_outlined,
            size: 40,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.message_outlined,
            size: 40,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}
