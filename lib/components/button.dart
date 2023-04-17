import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
 
  final Function()? onTap;
    const MyButton({
    super.key,
    required this.onTap,
    required this.texto,
  });

  final String texto;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 50.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, colors: [
            Color.fromARGB(255, 32, 181, 240),
            Color.fromARGB(255, 29, 147, 226),
            Color.fromARGB(255, 69, 114, 197),
          ]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text(texto, style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Poppins'),)),        
      ),
    );
  }
}
