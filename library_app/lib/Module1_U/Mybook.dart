import 'package:flutter/material.dart';

class MyBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mybook(),
    );
  }
}

class Mybook extends StatefulWidget {
  @override
  _MybookState createState() => _MybookState();
}

class _MybookState extends State<Mybook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.purple[700],
        title: Text("                 My book"),
      ),
      body: Center(
        child: Text("You don't hold any book"),
      ),
    );
  }
}
