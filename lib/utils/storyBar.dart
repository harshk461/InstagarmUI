import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/storyBubble.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({Key? key}) : super(key: key);

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
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: StoryUser.length,
        itemBuilder: ((context, index) => StoryBubble(
              ImageUrl: StoryUser[index][0],
              text: StoryUser[index][1],
            )),
      ),
    );
  }
}
