import 'package:facilite_teste/components/custom_text.dart';
import 'package:flutter/material.dart';
import '../components/textfield.dart';
import 'package:facilite_teste/components/custom_text.dart';

//chat

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: MySearch(
                        controller: searchController, hintText: 'Pesquisar'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                criarTexto2('Ultimas conversas'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      // Image.asset('name'),
                      Icon(Icons.person_rounded, size: 40),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            criarTexto2(
                              'Daniel Alves',
                            ),
                            criarTexto('Manutenção em geral'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      // Image.asset('name'),
                      Icon(Icons.person_rounded, size: 40),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            criarTexto2(
                              'Rodolfo Moraes',
                            ),
                            criarTexto('Tecnico em informatica'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      // Image.asset('name'),
                      Icon(Icons.person_rounded, size: 40),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            criarTexto2(
                              'Miranda Silva',
                            ),
                            criarTexto('Designer'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}