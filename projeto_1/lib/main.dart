import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Contador', home: MyHomePage());

    throw UnimplementedError();
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicativo contador'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Vezes que você apertou o botão flutuante:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displaySmall,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Incrementar botão',
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.amber,
          child: Container(
            height: 80,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        print('Adicionei alguma coisa');
                      },
                      icon: Icon(Icons.add_box, color: Colors.white)),
                  IconButton(
                    icon: Icon(Icons.add_a_photo, color: Colors.white),
                    onPressed: () {
                      print('Adicionei uma foto');
                    },
                  ),
                ],
              ),
            ),
          )),
    );

    throw UnimplementedError();
  }
}
