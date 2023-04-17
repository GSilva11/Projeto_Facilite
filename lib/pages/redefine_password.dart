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
      appBar: AppBar(
        elevation: 0,
<<<<<<< HEAD
        backgroundColor: Colors.blue[600],
=======
        // backgroundColor: Color.fromARGB(0, 238, 238, 238),
>>>>>>> ab1c3d87d2c4eb173f6b28840550a041926a3940
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 238, 238, 238),),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                    // margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .4,
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
                            style:
                                TextStyle(fontSize: 32, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
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
<<<<<<< HEAD
                            Navigator.pushNamed(context, '/menu');
=======
                            Navigator.pushNamed(context, '/profile');
>>>>>>> ab1c3d87d2c4eb173f6b28840550a041926a3940
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
