import 'package:flutter/material.dart';

class Senha extends StatelessWidget {
  const Senha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                  Color.fromARGB(255, 32, 181, 240),
                  Color.fromARGB(255, 29, 147, 226),
                  Color.fromARGB(255, 69, 114, 197),
                ]),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: MediaQuery.of(context).size.width * .8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 24.0),
                          child: Text(
                            'Redefinir senha',
                            style:
                                TextStyle(fontSize: 32, fontFamily: 'Poppins'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, bottom: 10),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.70,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: ('Nova senha'),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(0, 3, 168, 244)),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white60),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.70,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: ('Confirmar senha'),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(0, 3, 168, 244)),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white60),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: GestureDetector(
                            onTap: () {
                              // aqui você pode definir a funcionalidade do botão
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.70,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(255, 32, 181, 240),
                                    Color.fromARGB(255, 29, 147, 226),
                                    Color.fromARGB(255, 69, 114, 197),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Text(
                                  'Entrar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}