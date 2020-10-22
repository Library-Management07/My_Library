import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class StudentDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Studentdetail(),
    );
  }
}

class Studentdetail extends StatefulWidget {
  @override
  _StudentdetailState createState() => _StudentdetailState();
}

class _StudentdetailState extends State<Studentdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: Text("Login Student details"),
        backgroundColor: Colors.purple,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .orderBy('id', descending: false)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Wrap(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, i) {
                    return ExpansionTile(
                      title: ListTile(
                        leading: Icon(Icons.person),
                        title: Text(
                          "ID: " + snapshot.data.docs[i].get("id"),
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                              "Name: " + snapshot.data.docs[i].get("name")),
                          leading: Icon(Icons.person),
                        ),
                        ListTile(
                          title: Text(
                              "Email: " + snapshot.data.docs[i].get("email")),
                          leading: Icon(Icons.email),
                        ),
                        ListTile(
                          title: Text("Phone no: " +
                              snapshot.data.docs[i].get("contactNo")),
                          leading: Icon(Icons.phone),
                        )
                      ],
                    );
                  },
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
