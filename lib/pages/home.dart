import 'package:flutter/material.dart';
import '../components/textfield.dart';
import 'package:facilite_teste/components/custom_text.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Color(0xffeeeeee),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        criarTexto2('Facilite sua busca por profissionais'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: MySearch(
                          controller: searchController, hintText: 'Pesquisar'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      criarTexto2('Categorias'),
                      criarTexto2('Ver todos'),
                    ],
                  ),
                ),
                Container(
                  // margin: const EdgeInsets.symmetric(vertical: 20.0),
                  padding: EdgeInsets.only(top: 20),
                  height: 110.0,
                  child: ListView(
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: Color(0xffeeeeee),
                              size: 32,
                            ),
                            Text(
                              'Categoria',
                              style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff4572C5),
                        ),
                        width: 150.0,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: Color(0xffeeeeee),
                              size: 32,
                            ),
                            Text(
                              'Categoria',
                              style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff4572C5),
                        ),
                        width: 150.0,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: Color(0xffeeeeee),
                              size: 32,
                            ),
                            Text(
                              'Categoria',
                              style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff4572C5),
                        ),
                        width: 150.0,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: Color(0xffeeeeee),
                              size: 32,
                            ),
                            Text(
                              'Categoria',
                              style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff4572C5),
                        ),
                        width: 150.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            criarTexto2('Profissionais'),
                            criarTexto2('mais avaliados')
                          ],
                        ),
                        criarTexto2('Ver todos'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff4572C5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Roberto Souza',
                            style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        Text('Eletricista',
                            style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_circle_right_rounded,
                      size: 32,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff4572C5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sabrina Ramos',
                            style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        Text('Cabeleleira',
                            style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_circle_right_rounded,
                      size: 32,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff4572C5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Marta Ferreira',
                            style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        Text('Designer',
                            style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_circle_right_rounded,
                      size: 32,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff4572C5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Marta Ferreira',
                            style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        Text('Designer',
                            style: TextStyle(
                                color: Color(0xffeeeeee),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amberAccent,
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_circle_right_rounded,
                      size: 32,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
