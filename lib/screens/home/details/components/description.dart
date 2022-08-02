import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';

class Description extends StatelessWidget {
  const Description({
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: KdefaultPaddin,
      ),
      child: Text(
        description,
        style: TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}
