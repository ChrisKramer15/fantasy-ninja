import 'package:fantasy_ninja/auth_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "lib/assets/christopher-campbell-syyBwqVX0Hc-unsplash.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Google Sign In"),
            GestureDetector(
              onTap: () {
                AuthService().signinWithGoogle();
              },
              child: const Image(
                width: 100,
                image: AssetImage(
                    'lib/assets/christopher-campbell-syyBwqVX0Hc-unsplash.jpg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
