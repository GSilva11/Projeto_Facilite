import 'package:facilite_teste/pages/login_page.dart';
import 'package:facilite_teste/pages/senha_page.dart';
import 'package:facilite_teste/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facilite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) =>  LoginPage(),
        '/senha':(_) => const Senha(),
      },
    );
  }
}