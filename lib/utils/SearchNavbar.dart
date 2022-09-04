import 'package:flutter/material.dart';

class SearchNavbar extends StatelessWidget {
  const SearchNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          style: const TextStyle(
            fontSize: 18.0,
          ),
          decoration: InputDecoration(
            hintText: "Search...",
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(
                width: 1.0,
                color: Colors.white,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(
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
