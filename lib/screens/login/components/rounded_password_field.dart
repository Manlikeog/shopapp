import 'package:flutter/material.dart';

import 'text_field_container.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final String? Function(String?) validator;
  const RoundedPasswordField(
      {Key? key,
      required this.onChanged,
      required this.controller,
      required this.validator})
      : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool visibility = true;

  void ontapsee() {
    setState(() {
      visibility = !visibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: visibility,
        decoration: InputDecoration(
            hintText: "Password",
            icon: Icon(
              Icons.lock,
              color: Color(0xff013b47),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                visibility ? Icons.visibility_off : Icons.visibility,
                color: Color(0xff013b47),
              ),
              onPressed: (() {
                ontapsee();
              }),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
