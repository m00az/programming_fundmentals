import 'package:flutter/material.dart';
import 'package:programmig_fundmentals_main/view/home/home_page.dart';

void main() {
  runApp(Programming_fundmentals());
}

class Programming_fundmentals extends StatelessWidget {
  const Programming_fundmentals({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "programmming fundmentals",
      home: HomePage(),
    );
  }
}
