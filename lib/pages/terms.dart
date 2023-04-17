import 'package:flutter/material.dart';
import '../components/custom_text.dart';

class Termos extends StatelessWidget {
  const Termos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        centerTitle: true,
        title: Title(
            color: Color(0xff3e4756),
            child: Text(
              'Termos de uso',
              style: TextStyle(color: Color(0xff3e4756)),
            )),
        backgroundColor: Color(0xffeeeeee),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff3e4756),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text('1. OBJETO',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Color(0xff3e4756))),
                      ),
                    ],
                  ),
                  criarTexto(
                      'a. Os serviços objeto dos presentes Termos consistem em Permitir aos Contratantes que utilizem a Plataforma para livremente e sem direcionamento ou interferência busquem orçamentos de Prestadores'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text('2. CAPACIDADE PARA CADASTRAR-SE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Color(0xff3e4756))),
                      ),
                    ],
                  ),
                  criarTexto(
                      'ii. O Modelo de Utilização de Moedas, apresenta os orçamentos requeridos pelos Contratantes aos Prestadores (“Orçamentos”), que poderão oferecer ou não os seus Serviços (“Serviços”) ao Contratante.'),
                  SizedBox(
                    height: 20,
                  ),
                 Row(
                    children: [
                      Flexible(
                        child: Text('3. CADASTRO',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Color(0xff3e4756))),
                      ),
                    ],
                  ),
                  criarTexto(
                      'ii. O Modelo de Utilização de Moedas, apresenta os orçamentos requeridos pelos Contratantes aos Prestadores (“Orçamentos”), que poderão oferecer ou não os seus Serviços (“Serviços”) ao Contratante.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text('4. MODIFICAÇÕES DE TERMOS E CONDIÇOES GERAIS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Color(0xff3e4756))),
                      ),
                    ],
                  ),
                  criarTexto(
                      'ii. O Modelo de Utilização de Moedas, apresenta os orçamentos requeridos pelos Contratantes aos Prestadores (“Orçamentos”), que poderão oferecer ou não os seus Serviços (“Serviços”) ao Contratante.'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text('5. ACEITE DE ORÇAMENTOS',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Color(0xff3e4756))),
                      ),
                    ],
                  ),
                  criarTexto(
                      'ii. O Modelo de Utilização de Moedas, apresenta os orçamentos requeridos pelos Contratantes aos Prestadores (“Orçamentos”), que poderão oferecer ou não os seus Serviços (“Serviços”) ao Contratante.'),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
