import 'package:facilite_teste/components/textfield.dart';
import 'package:flutter/material.dart';
import '../components/textfield.dart';
import '../components/button.dart';
import '../components/button_tile.dart';
import '../components/app_bar.dart';

class BeforeAut extends StatelessWidget {
  BeforeAut({super.key});

  final passwordController = TextEditingController();
  final checkpasswordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Color.fromARGB(0, 238, 238, 238),
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
          Container(
            width: double.maxFinite,
            child: Image.asset('assets/images/undraw_Business.png', width: 250, height: 250)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          child: Text(
                            'Como gostaria de se cadastrar ?',
                            style:
                                TextStyle(fontSize: 24, fontFamily: 'Poppins',),
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 30),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ButtonClient(),
                            ButtonProf(),
                          ],
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
