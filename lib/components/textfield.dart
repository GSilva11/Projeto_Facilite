import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
 final controller;
 final String hintText;
 final bool obscureText;
 
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color:Color(0xffd9d9d9)),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffd9d9d9)),
            borderRadius: BorderRadius.circular(20),
          ),
          fillColor: Color(0xffd9d9d9),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xff4c4c4c)),
        ),
      ),
    );
  }
}