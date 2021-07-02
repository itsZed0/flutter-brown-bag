import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String title;
  final String decription;
  const SecondPage({Key? key, required this.title, required this.decription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(title);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
