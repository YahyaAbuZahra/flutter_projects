import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475F),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 122,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('images/yahya.png'),
              ),
            ),
            const SizedBox(height: 10), // تحسين التباعد بين العناصر
            const Text(
              'Yahya A.z',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                color: Color(0xFF6C8090),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 81, 114, 141),
              thickness: 2,
              indent: 60,
              endIndent: 60,
              height: 50,
            ),
            const ContactCard(
              icon: Icons.phone,
              text: '(+90) 123 456 789',
            ),
            const ContactCard(
              icon: Icons.mail,
              text: 'yahya@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactCard({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 65,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                size: 32,
                color: const Color(0xFF2B475E),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text(
                text,
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
