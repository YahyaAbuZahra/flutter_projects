import 'package:flutter/material.dart';

void main() {
  runApp(BirthdayCard());
}

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFD2BCD5),
        body:
            Center(child: Image(image: AssetImage('images/birthday_card.png'))),
      ),
    );
  }
}
