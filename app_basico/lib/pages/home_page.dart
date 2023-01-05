import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Aplicação Básica')),
      ),
      body: Column(
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
                        borderRadius: BorderRadius.all(Radius.circular(20))),
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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), label: 'Acessar conta'),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_rounded), label: 'Adicionar foto')
      ]),
    );
  }
}
