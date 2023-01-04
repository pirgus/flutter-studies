import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: 'Teste'));
}

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
          child: Text(
        title,
        textDirection: TextDirection.ltr,
        style:
            TextStyle(color: Color.fromARGB(255, 239, 43, 43), fontSize: 30.0),
      )),
    );
    throw UnimplementedError();
  }
}
