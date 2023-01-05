import 'package:flutter/material.dart';

import '../pageViews/page_account.dart';

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
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Text('P'),
                  backgroundColor: Colors.purple,
                ),
                accountName: Text('Pirgus'),
                accountEmail: Text('pirgus@email.com')),
            ListTile(
              title: Text('Configurações'),
              trailing: Icon(Icons.play_arrow_rounded),
              onTap: () {
                setState(() {
                  indexBottomNavigation = 0;
                });
                _pageController.jumpToPage(0);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          PageAccount(),
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
