import 'package:flutter/material.dart';

import '../auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
