import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  HelloWorldApp();

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        appBar: AppBar(
          title: Text('my first project'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.cyan,
              width: 120,
              height: 120,
              child: Center(child: Text('hello world')),
            ),
            Container(
              color: Colors.green,
              width: 120,
              height: 120,
              child: Center(child: Text('hello world')),
            ),
            Container(
              color: Colors.red,
              width: 120,
              height: 120,
              child: Center(child: Text('hello world')),
            ),
          ],
        ),
      ),
    );
  }
}

//debugShowCheckedModeBanner: false,
