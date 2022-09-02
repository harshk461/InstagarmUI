import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: const FaIcon(
              FontAwesomeIcons.home,
              size: 35.0,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/search");
            },
            icon: const FaIcon(
              FontAwesomeIcons.search,
              size: 35.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.instagram,
              size: 35.0,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/like');
            },
            icon: const FaIcon(
              FontAwesomeIcons.heart,
              size: 35.0,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/like');
            },
            icon: const FaIcon(
              FontAwesomeIcons.user,
              size: 35.0,
            ),
          ),
        ],
      ),
    );
  }
}
