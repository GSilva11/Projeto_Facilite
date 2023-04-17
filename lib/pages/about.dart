import 'package:flutter/material.dart';
import 'package:facilite_teste/components/custom_text.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4572C5),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Title(
            color: Color.fromARGB(255, 238, 238, 238), child: Text('Sobre')),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 238, 238, 238),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Color(0xffeeeeee),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        children: [
                          Flexible(child: criarTexto2('Desenvolvedores')),
                        ],
                      ),
                    ),
                    criarTexto(
                        'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. '),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 25),
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 2,
                                  ),
                                  
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/gabs.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              criarTexto2('Gabriel Silva'),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 25),
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 2,
                                  ),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/dan.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              criarTexto2('Daniel Alves'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: criarTexto2('Ferramentas de desenvolvimento'),
                        ),
                      ],
                    ),
                    criarTexto(
                        'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. '),
                    SizedBox(
                      height: 20,
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
