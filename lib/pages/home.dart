import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/utils/BottomBarUI.dart';
import 'package:instagram_ui/utils/navbar.dart';
import 'package:instagram_ui/utils/post.dart';
import 'package:instagram_ui/utils/storyBar.dart';
import 'package:instagram_ui/utils/storyBubble.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List StoryUser = [
      ['post.jpeg', 'user.jpeg', "Harsh"],
      ['post.jpeg', 'user.jpeg', "ABC"],
      ['post.jpeg', 'user.jpeg', "HJw"],
      ['post.jpeg', 'user.jpeg', "sdjkhk"],
      ['post.jpeg', 'user.jpeg', "sdjkh"],
      ['post.jpeg', 'user.jpeg', "Harsdjkmsh"],
      ['post.jpeg', 'user.jpeg', "Harsh"],
      ['post.jpeg', 'user.jpeg', "ABC"],
      ['post.jpeg', 'user.jpeg', "HJw"],
      ['post.jpeg', 'user.jpeg', "sdjkhk"],
      ['post.jpeg', 'user.jpeg', "sdjkh"],
      ['post.jpeg', 'user.jpeg', "Harsdjkmsh"],
    ];
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: NavbarUI(),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100.0,
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: StoryUser.length,
                  itemBuilder: ((context, index) => StoryBubble(
                        ImageUrl: StoryUser[index][1],
                        text: StoryUser[index][2],
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: StoryUser.length,
                itemBuilder: (context, index) => MyPost(
                  ImageUrl: StoryUser[index][1],
                  text: StoryUser[index][2],
                  PostUrl: StoryUser[index][0],
                ),
              ),
            ),
          ],
        ),
        bottomSheet: MyBottomBar(),
      ),
    );
  }
}
