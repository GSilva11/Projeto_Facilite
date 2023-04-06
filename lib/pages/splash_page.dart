import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
      (_) => Navigator.of(context).pushReplacementNamed('/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                  Color.fromARGB(255, 32, 181, 240),
                  Color.fromARGB(255, 29, 147, 226),
                  Color.fromARGB(255, 69, 114, 197),
                ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Facilite',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'LobsterTwo',
                        color: Colors.white),
                  ),
                  SizedBox(
                      child: Image.asset('assets/images/undraw_Login.png')),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .8,
                    child: Text(
                        'A maneira mais rápida e fácil de encontrar o serviço certo',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
