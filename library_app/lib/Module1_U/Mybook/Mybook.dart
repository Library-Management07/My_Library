import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:library_app/Module1_U/HomeScreen.dart';

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
  String curId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home_screen()));
            }),
        backgroundColor: Colors.purple[300],
        title: Text("                 My book"),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('db').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView(
                children: [
                  Divider(
                    height: 30.0,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    child: Container(
                      height: 60,
                      color: Colors.black12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < snapshot.data.docs.length; i++)
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(snapshot.data.docs[i]
                                  .get('BOOKNAME')
                                  .toString()),
                            ),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    color: Colors.blueGrey,
                  ),
                ],
              );
            }
          }),
    );
  }
}
