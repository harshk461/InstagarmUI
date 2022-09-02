import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/utils/navbar.dart';
import 'package:instagram_ui/utils/post.dart';
import 'package:instagram_ui/utils/storyBar.dart';
import 'package:instagram_ui/utils/storyBubble.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List StoryUser = [
      ['user.jpeg', "Harsh"],
      ['user.jpeg', "ABC"],
      ['user.jpeg', "HJw"],
      ['user.jpeg', "sdjkhk"],
      ['user.jpeg', "sdjkh"],
      ['user.jpeg', "Harsdjkmsh"],
      ['user.jpeg', "Harsh"],
      ['user.jpeg', "ABC"],
      ['user.jpeg', "HJw"],
      ['user.jpeg', "sdjkhk"],
      ['user.jpeg', "sdjkh"],
      ['user.jpeg', "Harsdjkmsh"],
    ];
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
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: StoryUser.length,
                  itemBuilder: ((context, index) => StoryBubble(
                        ImageUrl: StoryUser[index][0],
                        text: StoryUser[index][1],
                      )),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: StoryUser.length,
                itemBuilder: (context, index) => MyPost(
                    ImageUrl: StoryUser[index][0], text: StoryUser[index][1]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
