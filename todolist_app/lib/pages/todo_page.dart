import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> tarefas = [], tarefas_finalizadas = [];
  Color _tileColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('To-do All')),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.pink[400],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Adicione uma tarefa que precisa ser realizada',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        wordSpacing: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Mantenha pressionado sobre uma tarefa para finalizá-la',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            TextField(
              controller: _textEditingController,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Tarefas ainda não finalizadas',
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.pink[200],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.black,
                      ),
                  itemCount: tarefas.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      focusColor: _tileColor,
                      title: Text(tarefas[index]),
                      onLongPress: () {
                        setState(() {
                          tarefas_finalizadas.add(tarefas[index]);
                          tarefas.removeAt(index);
                        });
                      },
                    );
                  })),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Tarefas finalizadas',
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.black,
                      ),
                  itemCount: tarefas_finalizadas.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      focusColor: _tileColor,
                      title: Text(tarefas_finalizadas[index]),
                    );
                  })),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: FloatingActionButton(
              onPressed: () {
                if (_textEditingController.text.length > 0) {
                  // pelo menos um caractere digitado
                  setState(() {
                    tarefas.add(_textEditingController.text);
                  });

                  _textEditingController.clear();
                }
                print(tarefas);
              },
              backgroundColor: Colors.pink[300],
              child: Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: FloatingActionButton(
              onPressed: () {
                // pelo menos um caractere digitado
                setState(() {
                  tarefas = [];
                  tarefas_finalizadas = [];
                });
                _textEditingController.clear();
              },
              backgroundColor: Colors.pink[700],
              child: Icon(Icons.delete_forever_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
