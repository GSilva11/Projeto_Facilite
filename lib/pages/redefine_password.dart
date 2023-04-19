import 'package:facilite_teste/components/textfield.dart';
import 'package:flutter/material.dart';
import '../components/textfield.dart';
import '../components/button.dart';
import '../components/app_bar.dart';

class RedefinePassword extends StatelessWidget {
  RedefinePassword({super.key});

  final passwordController = TextEditingController();
  final checkpasswordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: const Icon(Icons.arrow_back_ios_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
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
                    // margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Redefinir senha',
                            style: TextStyle(
                                fontSize: 32,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        MyTextField(
                            controller: passwordController,
                            hintText: 'Nova senha',
                            obscureText: true),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                            controller: checkpasswordController,
                            hintText: 'Confirmar senha',
                            obscureText: true),
                        SizedBox(
                          height: 40,
                        ),
                        MyButton(
                          onTap: () {
                            Navigator.pushNamed(context, '/menu');
                          },
                          texto: 'Redefinir',
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
