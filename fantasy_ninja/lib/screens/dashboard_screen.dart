import 'package:fantasy_ninja/utils/palette.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../utils/palette.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: PaletteColor.mainColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(FirebaseAuth.instance.currentUser!.displayName!,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: PaletteColor.darkAccent)),
          const SizedBox(
            height: 10,
          ),
          Text(
            FirebaseAuth.instance.currentUser!.email!,
          )
        ],
      ),
    );
  }
}
