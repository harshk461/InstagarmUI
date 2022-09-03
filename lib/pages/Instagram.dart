import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/utils/BottomBarUI.dart';

class InstaGram extends StatelessWidget {
  const InstaGram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Center(
          child: FaIcon(
            FontAwesomeIcons.instagram,
            size: 200.0,
            color: Colors.pink,
          ),
        ),
        bottomSheet: MyBottomBar(),
      ),
    );
  }
}
