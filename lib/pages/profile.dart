import 'package:facilite_teste/components/custom_text.dart';
import 'package:facilite_teste/pages/Chat.dart';
import 'package:facilite_teste/pages/Home.dart';
import 'package:facilite_teste/pages/about.dart';
import 'package:facilite_teste/pages/historic.dart';
import 'package:facilite_teste/pages/terms.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4572C5),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/gabs.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Container(
                        margin: EdgeInsets.only(top: 170),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          color: Color(0xffeeeeee),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Gabriel Silva',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff3E4756)),
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
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                      },
                                      child: criarTexto2('Meus dados'),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_forward_ios),
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                      },
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
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                      },
                                      child: criarTexto2('Central de ajuda'),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_forward_ios),
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                      },
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
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                      },
                                      child: criarTexto2('Politica de privacidade'),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_forward_ios),
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                      },
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
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                      },
                                      child: criarTexto2('Alterar tema'),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_forward_ios),
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                      },
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
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text('Deseja sair da conta?'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(context),
                                                  child: Text('Cancelar'),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    // função para sair da conta
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('Sair'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: criarTexto2('Sair da conta'),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_forward_ios),
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: Text('Deseja sair da conta?'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(context),
                                                  child: Text('Cancelar'),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    // função para sair da conta
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('Sair'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
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
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => About()),
                                        );
                                      },
                                      child: criarTexto2('Sobre'),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_forward_ios),
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => About()),
                                        );
                                      },
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
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Termos()),
                                        );
                                      },
                                      child: criarTexto2('Termos de uso'),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.arrow_forward_ios),
                                      onPressed: () {
                                        // ação quando o botão for pressionado
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Termos()),
                                        );
                                      },
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}