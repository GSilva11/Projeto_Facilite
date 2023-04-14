import 'package:flutter/material.dart';
import '../components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                  Color.fromARGB(255, 32, 181, 240),
                  Color.fromARGB(255, 29, 147, 226),
                  Color.fromARGB(255, 69, 114, 197),
                ]),
              ),
            ),
            Image.asset(
              'assets/images/undraw_Login.png',
              height: 180,
              width: double.maxFinite,
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(top: 180),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text('Bem vindo', style: TextStyle(fontSize: 24, fontFamily: 'Poppins'),),
                      Text('Faça login para acessar sua conta',style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),),
                      SizedBox(
                        height: 30,
                      ),
                      MyTextField(
                        controller: usernameController,
                        hintText: 'Email',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MyTextField(
                        controller: passwordController,
                        hintText: 'Senha',
                         obscureText: true,
                       
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0),
                            child: TextButton(onPressed: () {}, child: Text('Esqueceu a senha?', style: TextStyle(color: Color(0xFF4572c5), fontWeight: FontWeight.bold),),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
