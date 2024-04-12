// import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.obscureText = false});
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(27),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "$hintText is Missing!";
        }
        return null;
      },
    );
  }
}
