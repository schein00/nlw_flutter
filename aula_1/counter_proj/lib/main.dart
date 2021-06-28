import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightBlue), home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value = 0;

  void increment() {
    value++;
    print(value);
    setState(() {});
  }

  void decrement() {
    if (value > 0) value--;
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('APP CONTADOR')),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
            child: Text('contador\n$value', textAlign: TextAlign.center)),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            increment();
          }),
    );
    // throw UnimplementedError();
  }
}
