import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyPost extends StatelessWidget {
  final String ImageUrl;
  final String text;
  const MyPost({required this.ImageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/user.jpeg",
                      width: 50.0,
                      height: 50.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "sm,ddss",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.ellipsisVertical),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
