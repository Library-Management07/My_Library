import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AccountSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AccSetting(),
    );
  }
}

class AccSetting extends StatefulWidget {
  @override
  _AccSettingState createState() => _AccSettingState();
}

class _AccSettingState extends State<AccSetting> {
  String userid = FirebaseAuth.instance.currentUser.uid;
  String curId;
  compare() {
    return curId;
  }

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
              title: Text("My Account"),
              background: Image.asset(
                "assets/Menu_Home.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(userid)
            .snapshots(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            curId = snapshot.data.get('id').toString();
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.purple[700],
                        child: ClipOval(
                          child: SizedBox(
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                      title: Text(snapshot.data.get('name').toString()),
                      subtitle: Text(snapshot.data.get('email').toString()),
                    ),
                  ),
                  Divider(
                    height: 10.0,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    child: Container(
                      height: 60.0,
                      color: Colors.black12,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child:
                              Text("Id: " + snapshot.data.get('id').toString()),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    child: Container(
                      height: 60.0,
                      color: Colors.black12,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text("Email Id: " +
                              snapshot.data.get('email').toString()),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    child: Container(
                      height: 60.0,
                      color: Colors.black12,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: Text("Contact Number: " +
                              snapshot.data.get('contactNo').toString()),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
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
