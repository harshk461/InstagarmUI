import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/navbar.dart';
import 'package:instagram_ui/utils/storyBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: NavbarUI(),
        ),
        body: Column(
          children: [
            Expanded(
              child: StoryBar(),
            ),
          ],
        ),
      ),
    );
  }
}
