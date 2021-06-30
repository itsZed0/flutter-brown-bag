import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    print(args['title']);
    return Scaffold(
      body: Container(
          child: ElevatedButton(
        child: Text("Back"),
        onPressed: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
