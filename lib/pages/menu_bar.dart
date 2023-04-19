import 'package:facilite_teste/pages/chat.dart';
import 'package:facilite_teste/pages/historic.dart';
import 'package:facilite_teste/pages/home.dart';
import 'package:facilite_teste/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class MyMenuBar extends StatefulWidget {
  const MyMenuBar({super.key});

  @override
  State<MyMenuBar> createState() => _MyMenuBarState();
}

class _MyMenuBarState extends State<MyMenuBar> {
  int _opcaoSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: ConvexAppBar(
          initialActiveIndex: _opcaoSelecionada,
          onTap: (opcao) => {
            setState(() {
              _opcaoSelecionada = opcao;
            }),
          },
          backgroundColor: Color.fromARGB(255, 69, 114, 197),
          items: [
            TabItem(icon: Icons.home_rounded, title: 'Inicio'),
            TabItem(icon: Icons.chat_rounded, title: 'Mensagens'),
            TabItem(icon: Icons.history_rounded, title: 'Historico'),
            TabItem(icon: Icons.person_rounded, title: 'Perfil'),
          ],
        ),
        body: IndexedStack(
          index: _opcaoSelecionada,
          children: <Widget>[
            HomePage(),
            ChatPage(),
            HistoricPage(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
