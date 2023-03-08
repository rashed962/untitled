import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [


        Text("Profile screen", style: TextStyle(
          fontSize: 25,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),


        )
      ],
    );
  }
}