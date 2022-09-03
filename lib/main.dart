import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/Instagram.dart';
import 'package:instagram_ui/pages/LikedPage.dart';
import 'package:instagram_ui/pages/Profile.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/searchpage.dart';

void main() {
  runApp(const MyApp());
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
        '/': (context) => const HomePage(),
        '/search': (context) => const SearchPage(),
        '/like': (context) => const LikedPage(),
        '/profile': (context) => const Profile(),
        '/instagram': (context) => const InstaGram(),
      },
    );
  }
}
