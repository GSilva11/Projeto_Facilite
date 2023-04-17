import 'package:flutter/material.dart';

Widget criarTexto(String texto){
  return Text(
    texto,
    style: const TextStyle(
      fontSize: 16,
      fontFamily: 'Poppins',
      color: Color(0xff3e4756),
    ),
  );
}

Widget criarTexto2(String texto){
  return Text(
    texto,
    style: const TextStyle(
      fontSize: 16,
      fontFamily: 'Poppins',
      color: Color(0xff3e4756),
      fontWeight: FontWeight.w600,
    ),
  );
}