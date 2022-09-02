import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/LikedPage.dart';
import 'package:instagram_ui/pages/Profile.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/searchpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/profile',
      routes: {
        '/': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/like': (context) => LikedPage(),
        '/profile': (context) => Profile(),
      },
    );
  }
}
