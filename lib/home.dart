import 'package:flutter/material.dart';
import 'package:basic_calculator_project/main.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Calculator")),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calculate, size: 300),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Calculator()),
                  );
                },
                child: Text(
                  "Click",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Developed by: [Vishesh kaushik]',
                    style: TextStyle(color: Colors.white, fontSize: 16),)),

            ],
          ),
        ),
      ),
      backgroundColor: Colors.orange,
    );
  }
}