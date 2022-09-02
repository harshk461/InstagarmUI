import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/BottomBarUI.dart';
import 'package:instagram_ui/utils/SearchNavbar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 85.0,
              child: SearchNavbar(),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.amber,
                              ),
                              width: MediaQuery.of(context).size.width / 3.3,
                              height: MediaQuery.of(context).size.height / 3.3,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.amber,
                              ),
                              width: MediaQuery.of(context).size.width / 3.3,
                              height: MediaQuery.of(context).size.height / 3.3,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.amber,
                              ),
                              width: MediaQuery.of(context).size.width / 3.3,
                              height: MediaQuery.of(context).size.height / 3.3,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ]),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
