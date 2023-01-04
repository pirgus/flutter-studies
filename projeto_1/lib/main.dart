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
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
              focusColor: Color.fromARGB(255, 16, 82, 19),
              tooltip: 'Incrementar botão',
              onPressed: _incrementCounter,
              child: Icon(Icons.add),
              backgroundColor: Colors.green),
          FloatingActionButton(
              focusColor: Color.fromARGB(255, 121, 21, 14),
              tooltip: 'Decrementar botão',
              onPressed: _decrementCounter,
              child: Icon(Icons.remove),
              backgroundColor: Colors.red),
        ],
      ),
    );

    throw UnimplementedError();
  }
}
