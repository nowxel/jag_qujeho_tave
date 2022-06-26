import 'package:flutter/material.dart';
import 'package:jag_qujeho_tave/received_message_screen.dart';
import 'package:jag_qujeho_tave/sent_message_screen.dart';

import 'create_material_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final createMaterialColor = CreateMaterialColor();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: createMaterialColor.createMaterialColor(
          const Color(0xFF008069),
        ),
      ),
      home: const HomePage(
        title: "Jag qujeho tave",
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(title),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xffefe6dd)),
        child: ListView(
          children: const [
            SentMessageScreen(message: "Hello"),
            ReceivedMessageScreen(message: "Hi, how are you"),
            SentMessageScreen(message: "I am great how are you doing"),
            ReceivedMessageScreen(message: "I am also fine"),
            SentMessageScreen(message: "Can we meet tomorrow?"),
            ReceivedMessageScreen(
                message: "Yes, of course we will meet tomorrow"),
          ],
        ),
      ),
    );
  }
}