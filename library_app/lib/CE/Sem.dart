import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:library_app/CE/Subject.dart';

// ignore: must_be_immutable
class Sem extends StatefulWidget {
  // ignore: non_constant_identifier_names
  String Semester, tsem;
  // ignore: non_constant_identifier_names
  Sem({this.Semester, this.tsem});
  @override
  _SemState createState() => _SemState();
}

class _SemState extends State<Sem> {
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
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(widget.tsem),
              background: Image.asset(
                "assets/Menu_Home.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: SingleChildScrollView(
        child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('CE')
                .doc(widget.Semester)
                .collection('SUBJECTS')
                .orderBy('NAME', descending: false)
                .snapshots(),
            // ignore: missing_return
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Column(
                  children: [
                    for (int i = 0; i < snapshot.data.docs.length; i++)
                      Center(
                        child: SizedBox(
                          width: 220.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Subject(
                                            semid: widget.Semester,
                                            subid: snapshot.data.docs[i].id,
                                            subname: snapshot.data.docs[i]
                                                .get('NAME'),
                                          )));
                            },
                            child: Container(
                              child: Center(
                                  child: Text(
                                snapshot.data.docs[i].get("NAME"),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                              padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                              margin: EdgeInsets.all(10.0),
                              //  height: 230.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/Round.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              }
            }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: nested());
  }
}
