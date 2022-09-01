import 'package:flutter/material.dart';

class StoryBubble extends StatelessWidget {
  final String ImageUrl;
  final String text;
  StoryBubble({required this.ImageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              "assets/images/$ImageUrl",
              width: 50.0,
              height: 50.0,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Text(text),
      ],
    );
  }
}
