import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;

  const AuthField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$hintText is required.';
        }
        return null;
      },
    );
  }
}
