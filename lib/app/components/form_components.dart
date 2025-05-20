import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FormComponents extends StatelessWidget {
  FormComponents({
    super.key,
    this.hide = false,
    this.textInputType = TextInputType.emailAddress,
    this.controller
  });

  TextInputType textInputType;
  bool hide;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: hide,
      decoration: InputDecoration(
        suffixIcon: hide ? Icon(Icons.remove_red_eye_rounded) : null,
        border: OutlineInputBorder(),
      ),
    );
  }
}
