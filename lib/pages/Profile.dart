import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/utils/BottomBarUI.dart';
import 'package:instagram_ui/utils/profilecard.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: const [
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
                    children: const [
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
              const SizedBox(
                height: 20.0,
              ),
              const ProfileCard(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: 40.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: 40.0,
                    child: IconButton(
                      color: Colors.grey,
                      icon: const FaIcon(
                        FontAwesomeIcons.userPlus,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "My Posts",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      width: 170.0,
                                      height: 170.0,
                                      child: Image.asset(
                                        "assets/images/post.jpeg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      width: 170.0,
                                      height: 170.0,
                                      child: Image.asset(
                                        "assets/images/post.jpeg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                              ]),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: const MyBottomBar(),
      ),
    );
  }
}
