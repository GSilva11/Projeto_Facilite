import 'package:facilite_teste/components/app_bar.dart';
import 'package:facilite_teste/pages/terms.dart';
import 'package:flutter/material.dart';
import '../components/textfield.dart';
import '../components/app_bar.dart';
import '../components/button.dart';

class Register extends StatelessWidget {

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final checkpasswordController = TextEditingController();

  Register({super.key});

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: 
      AppBar(
        elevation: 0,
        backgroundColor: Color(0xffeeeeee),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xff3e4756),),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Image.asset('assets/images/undraw_Cad.png',
                  height: 150, width: 150),
              Text(
                'Criar conta',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3E4756)),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextField(
                    controller: usernameController,
                    hintText: 'Nome Completo',
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    controller: phoneController,
                    hintText: 'Telefone',
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
                  SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    controller: checkpasswordController,
                    hintText: 'Confirmar Senha',
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      MyButton(
                        onTap: signUserIn,
                        texto: 'Criar',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Criando a conta, você concorda com os',
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Termos()),
                      );
                    },
                    child: Text(
                      'Termos de uso',
                      style: TextStyle(
                        color: Color(0xff0C3359),
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
