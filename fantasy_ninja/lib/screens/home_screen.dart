import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "lib/assets/christopher-campbell-syyBwqVX0Hc-unsplash.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
