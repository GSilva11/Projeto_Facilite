import 'package:flutter/material.dart';

class ButtonTile extends StatelessWidget {
  final String imagePath;
  const ButtonTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Color.fromARGB(255, 32, 181, 240),
          Color.fromARGB(255, 29, 147, 226),
          Color.fromARGB(255, 69, 114, 197),
        ]),
      ),
      child: Image.asset(
        imagePath,
        height: 30,
      ),
    );
  }
}

class ButtonClient extends StatelessWidget {
  const ButtonClient({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Color.fromARGB(255, 32, 181, 240),
          Color.fromARGB(255, 29, 147, 226),
          Color.fromARGB(255, 69, 114, 197),
        ]),
      ),
      child: Center(child: Text('Cliente', style: TextStyle(fontFamily: 'Poppins', fontSize: 20, color: Color(0xffeeeeee), ),)),
    );
  }
}

class ButtonProf extends StatelessWidget {
  const ButtonProf({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      padding: EdgeInsets.all(10),
      
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff1d8fe1)),
        borderRadius: BorderRadius.circular(20),
        color: Color(0xeeeeee),
      ),
      child: Center(child: Text('Profissional', style: TextStyle(fontFamily: 'Poppins', fontSize: 20, color: Color(0xff1D8FE1), ),)),
    );
  }
}