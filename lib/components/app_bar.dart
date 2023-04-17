import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
    // required this.onTap,
    });

  // final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Color(0xffeeeeee),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Color(0xff3e4756),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}