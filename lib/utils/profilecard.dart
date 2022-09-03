import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List ProfileData = [
      ['Posts', '5'],
      ['Followers', '500'],
      ['Following', '500'],
    ];
    return Expanded(
      child: Row(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                    width: 4.0,
                    color: Colors.green,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    "assets/images/user.jpeg",
                    width: 120.0,
                    height: 120.0,
                  ),
                ),
              ),
              ListView.builder(
                itemCount: ProfileData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(ProfileData[index][0]),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(ProfileData[index][1])
                    ],
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
