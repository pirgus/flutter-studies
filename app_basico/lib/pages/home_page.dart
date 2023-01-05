import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  int indexBottomNavigation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Aplicação Básica')),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Olá, mundo!',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 143, 106, 246),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      height: 100,
                      width: MediaQuery.of(context).size.width / 2 - 16.0,
                      child: Center(
                          child: Text(
                        'Primeiro container',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 143, 106, 246),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        height: 100,
                        width: MediaQuery.of(context).size.width / 2 - 16.0,
                        child: Center(
                            child: Text(
                          'Segundo container',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                ],
              )
            ],
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigation,
          onTap: (int index) {
            setState(() {
              indexBottomNavigation = index;
            });
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Acessar conta'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo_rounded), label: 'Adicionar foto')
          ]),
    );
  }
}
