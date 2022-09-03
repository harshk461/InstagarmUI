import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/utils/profilecard.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Harsh_k_8597",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      FaIcon(FontAwesomeIcons.angleDown),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add_box_outlined,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      FaIcon(
                        FontAwesomeIcons.gear,
                        size: 35.0,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ProfileCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
