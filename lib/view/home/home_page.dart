import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.055),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF284B63),
          title: Text(
            "Home Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Center(
        child: Text("home page"),
      ),
    );
  }
}
