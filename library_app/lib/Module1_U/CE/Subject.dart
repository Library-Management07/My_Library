import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Subject extends StatefulWidget {
  String semid, subid, subname;
  Subject({this.semid, this.subid, this.subname});
  @override
  _SubjectState createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                }),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.purple[700],
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(widget.subname),
              background: Image.asset(
                "assets/Menu_Home.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: Wrap(
        spacing: 10.0,
        children: [
          StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('CE')
                .doc(widget.semid)
                .collection('SUBJECTS')
                .doc(widget.subid)
                .collection('BOOKS')
                .orderBy('NAME', descending: false)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, i) {
                    return ExpansionTile(
                      title: ListTile(
                        title: Text(
                          snapshot.data.docs[i].get('NAME'),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text("Available: " +
                              snapshot.data.docs[i].get('AVAIL').toString()),
                        ),
                      ],
                    );
                  },
                );
              }
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
  }
}
