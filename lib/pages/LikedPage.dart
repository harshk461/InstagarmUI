
import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/BottomBarUI.dart';
import 'package:instagram_ui/utils/FollowCard.dart';

class LikedPage extends StatelessWidget {
  const LikedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 10.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Activity",
                style: TextStyle(
                  fontSize: 35.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 10.0, bottom: 15.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Icon(
                      Icons.supervised_user_circle,
                      size: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Follow Request",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Approve or Ignore Request",
                        style: TextStyle(
                          color: Colors.grey[100],
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 0.0, 15.0),
              child: Text(
                "Today",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) => const FollowCard(),
                itemCount: 10,
              ),
            )
          ],
        ),
        bottomSheet: const MyBottomBar(),
      ),
    );
  }
}
