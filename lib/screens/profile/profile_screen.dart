import 'package:flutter/material.dart';
import 'package:shopapp/screens/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbfbfa),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffbfbfa),
        elevation: 0,
      ),
      body: Body(),
    );
  }
}
