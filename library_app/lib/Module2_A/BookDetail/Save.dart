import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Save extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: save(),
    );
  }
}

// ignore: camel_case_types
class save extends StatefulWidget {
  final String detail;
  save({this.detail});
  @override
  _saveState createState() => _saveState();
}

// ignore: camel_case_types
class _saveState extends State<save> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('db')
            .orderBy('ID', descending: false)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: [
                Wrap(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: (context, i) {
                        return ExpansionTile(
                          title: ListTile(
                            leading: Icon(Icons.person),
                            title: Text(
                              "Id: " + snapshot.data.docs[i].get('ID'),
                            ),
                          ),
                          children: [
                            ListTile(
                              title: Text(
                                "Email: " + snapshot.data.docs[i].get('EMAIL'),
                              ),
                              leading: Icon(Icons.email),
                            ),
                            ListTile(
                              title: Text(
                                "BooKName: " +
                                    snapshot.data.docs[i].get('BOOKNAME'),
                              ),
                              leading: Icon(Icons.library_books),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                )
              ],
            );
          }
        },
      ),
    );
  }
}
