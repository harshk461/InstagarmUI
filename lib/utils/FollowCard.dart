import 'package:flutter/material.dart';

class FollowCard extends StatefulWidget {
  const FollowCard({Key? key}) : super(key: key);

  @override
  State<FollowCard> createState() => _FollowCardState();
}

class _FollowCardState extends State<FollowCard> {
  @override
  Widget build(BuildContext context) {
    String btntext = 'Following';
    String colorwhite = '#efefe';
    String colorblue = '#277BC0';
    String finalColor = colorwhite;
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
        margin: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    "assets/images/user.jpeg",
                    width: 60.0,
                    height: 60.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "XYZ ABCC Started\n Following you",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (btntext == 'Following') {
                    btntext = 'Follow';
                    print("dhjs");
                  }
                });
              },
              child: Text(
                btntext,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
