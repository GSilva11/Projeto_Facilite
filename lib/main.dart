import 'package:facilite_teste/pages/Chat.dart';
import 'package:facilite_teste/pages/Home.dart';
import 'package:facilite_teste/pages/about.dart';
import 'package:facilite_teste/pages/before_authentication.dart';
import 'package:facilite_teste/pages/forgot_password.dart';
import 'package:facilite_teste/pages/historic.dart';
import 'package:facilite_teste/pages/login_page.dart';
import 'package:facilite_teste/pages/menu_bar.dart';
import 'package:facilite_teste/pages/profile.dart';
import 'package:facilite_teste/pages/register_page.dart';
import 'package:facilite_teste/pages/redefine_password.dart';
import 'package:facilite_teste/pages/splash_page.dart';
import 'package:facilite_teste/pages/terms.dart';
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
      // initialRoute: '/profile',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) =>  LoginPage(),
        '/home': (_) =>  HomePage(),
        '/menu':(_) => MyMenuBar(),
        '/chat': (_) => ChatPage(),
        '/historic': (_) => HistoricPage(),
        '/profile':(_) => Profile(),
        '/facegoo':(_) => BeforeAut(),
        '/register': (_) => Register(),
        '/esqueceu':(_) => ForgotPassword(),
        '/redefinir':(_) => RedefinePassword(),
        '/termos':(_) => Termos(),
        '/about':(_) => About(),
      },
    );
  }
}