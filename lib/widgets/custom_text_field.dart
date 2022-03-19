import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? text;
  bool isObscure = false;
  CustomTextField({Key? key, required String? text, bool isObscure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: TextField(
          obscureText: isObscure ? true : false,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(14.0),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.green,
                ),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.black54,
                ),
                borderRadius: BorderRadius.circular(10)),
            fillColor: Colors.white54,
            filled: true,
            hintText: text,
          )),
    );
  }
}
