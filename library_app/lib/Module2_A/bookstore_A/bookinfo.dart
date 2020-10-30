// ignore: camel_case_types
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:library_app/Module2_A/HomeScreen2.dart';
import 'package:library_app/Module2_A/bookstore_A/semm.dart';

// ignore: camel_case_types
class bi extends StatefulWidget {
  @override
  _biState createState() => _biState();
}

// ignore: camel_case_types
class _biState extends State<bi> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_screen2()));
                }),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.purple[300],
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("CE"),
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
                .orderBy("NAME", descending: false)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
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
                                      builder: (context) => SemA(
                                            Semester: snapshot.data.docs[i].id,
                                            tsem: snapshot.data.docs[i]
                                                .get("NAME"),
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
    return Scaffold(
      body: nested(),
    );
  }
}
