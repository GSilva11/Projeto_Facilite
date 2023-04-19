import 'package:facilite_teste/components/button_tile.dart';
import 'package:facilite_teste/pages/forgot_password.dart';
import 'package:facilite_teste/pages/profile.dart';
import 'package:facilite_teste/pages/register_page.dart';
import 'package:facilite_teste/pages/redefine_password.dart';
import 'package:flutter/material.dart';
import '../components/textfield.dart';
import '../components/button.dart';
// import '../components/button_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {
    print('Teste');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/undraw_Login.png',
                  height: 200,
                  width: double.maxFinite,
                ),
              ),
              Positioned(
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Container(
                    margin: EdgeInsets.only(top: 200),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'Bem vindo',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff3E4756)),
                          ),
                          Text(
                            'Faça login para acessar sua conta',
                            style:
                                TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                            controller: passwordController,
                            hintText: 'Senha',
                            obscureText: true,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword()),
                                    );
                                  },
                                  //Mudar o redirecionamento da pagina
                                  child: Text(
                                    'Esqueceu a senha?',
                                    style: TextStyle(
                                        color: Color(0xff0C3359),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Column(
                            children: [
                              MyButton(
                                onTap: () {
                                  Navigator.pushNamed(context, '/menu');
                                },
                                texto: 'Entrar',
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              )),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  'Ou entrar como',
                                  style: TextStyle(
                                      color: Color(0xff3E4756),
                                      fontFamily: 'Poppins'),
                                ),
                              ),
                              Expanded(
                                  child: Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/facegoo');
                                  },
                                  child: ButtonTile(
                                      imagePath: 'assets/images/facebook.png')),
                              SizedBox(
                                width: 25,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/facegoo');
                                  },
                                  child: ButtonTile(
                                      imagePath: 'assets/images/google.png')),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Não tem uma conta ?',
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    // alterar redirecionamento
                                    MaterialPageRoute(
                                        builder: (context) => Register()),
                                  );
                                },
                                child: Text(
                                  'Criar conta',
                                  style: TextStyle(
                                      color: Color(0xff0C3359),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
