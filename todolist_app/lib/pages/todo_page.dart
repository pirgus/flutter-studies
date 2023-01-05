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
  List<String> tarefas = [];

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
            TextField(
              controller: _textEditingController,
            ),
            Container(
              height: 300,
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: tarefas.length,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      title: Text(tarefas[index]),
                      onLongPress: () {
                        setState(() {
                          tarefas.removeAt(index);
                        });
                      },
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
                });
                _textEditingController.clear();
              },
              backgroundColor: Colors.pink[700],
              child: Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
