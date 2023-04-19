import 'package:facilite_teste/components/custom_text.dart';
import 'package:flutter/material.dart';
import '../components/textfield.dart';

class HistoricPage extends StatelessWidget {
  HistoricPage({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffeeeeee),
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  criarTexto2('Historico'),
                  criarTexto2('Filtrar'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Clique para mais detalhes',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.grey[600]),
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
            SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        criarTexto2('Daniel Alves'),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 35)),
                        criarTexto2('Valor: 170,00'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        criarTexto('Marido de Aluguel'),
                        Text(
                          'Em andamento',
                          style: TextStyle(
                              color: Colors.blueAccent, fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        criarTexto2('Roberto Lima'),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        criarTexto2('Valor: 140,00'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        criarTexto('Designer'),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
                        Text(
                          'Concluido',
                          style: TextStyle(
                              color: Colors.greenAccent[700],
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        criarTexto2('Andre Oliveira'),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
                        criarTexto2('Valor: 130,00'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        criarTexto('Encanador'),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
                        Text(
                          'Cancelado',
                          style: TextStyle(
                              color: Colors.redAccent, fontFamily: 'Poppins'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}