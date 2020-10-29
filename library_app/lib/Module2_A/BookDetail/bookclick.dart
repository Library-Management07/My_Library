import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BookClick(),
    );
  }
}

class BookClick extends StatefulWidget {
  @override
  _BookClickState createState() => _BookClickState();
}

class _BookClickState extends State<BookClick> {
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
        title: Text('Books'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('CE')
            .doc()
            .collection('SUBJECTS')
            .doc()
            .collection('BOOKS')
            .orderBy('NAME', descending: false)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column();
          }
        },
      ),
    );
  }
}
//Text(snapshot.data.docs[i].get('NAME')),
