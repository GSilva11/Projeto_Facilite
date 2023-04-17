import 'dart:ui';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import 'package:facilite_teste/components/custom_text.dart';
import 'package:facilite_teste/components/textfield.dart';
import 'package:flutter/material.dart';
import '../components/textfield.dart';
import '../components/button.dart';
import '../components/app_bar.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final emailrecoveryController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.blue[600],
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 238, 238, 238),),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      appBar: NewGradientAppBar(
        gradient: LinearGradient(colors: [Color(0xFF20B5F0),
                  Color(0xFF1D93E2),
                  Color(0xFF4572C5),]),
      ),
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
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/undraw_Forgot_password.png', height: 200, width: MediaQuery.of(context).size.width * .9,),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Esqueceu sua senha?',
                              style:
                                  TextStyle(fontSize: 24, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text('Insira seu e-mail para recuperar sua senha', style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        MyTextField(
                            controller: emailrecoveryController,
                            hintText: 'Email de recuperação',
                            obscureText: true),
                        SizedBox(
                          height: 40,
                        ),
                        MyButton(
                           onTap: () {
                                  Navigator.pushNamed(context, '/redefinir');
                                },
                          texto: 'Enviar',
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
