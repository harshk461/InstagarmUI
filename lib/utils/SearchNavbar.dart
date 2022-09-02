import 'package:flutter/material.dart';

class SearchNavbar extends StatelessWidget {
  const SearchNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: TextField(
          style: TextStyle(
            fontSize: 18.0,
          ),
          decoration: InputDecoration(
            hintText: "Search...",
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.white,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
