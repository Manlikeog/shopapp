import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccount({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ? ",
          style: TextStyle(
            color: Color(0xff013b47),
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: Color(0xff013b47),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
