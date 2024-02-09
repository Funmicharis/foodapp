import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Food App',
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
         leading: Icon(Icons.arrow_back),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(Icons.more_horiz),
        ),
      ],
      ),
      body:   SingleChildScrollView(
        // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
