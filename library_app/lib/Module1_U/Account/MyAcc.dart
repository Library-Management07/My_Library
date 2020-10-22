import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:library_app/Module1_U/Account/AccSetting.dart';
import 'package:library_app/Module1_U/Screens/Welcome/welcome_screen.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Account(),
    );
  }
}

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final userid = FirebaseAuth.instance.currentUser.uid;
  String n;
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
          stream: FirebaseFirestore.instance.collection('users').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView(
                children: [
                  for (int i = 0; i < snapshot.data.docs.length; i++)
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
                        title: Text('n'),
                        subtitle: Text('ngv'),
                      ),
                    ),
                  Divider(
                    height: 10.0,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AccSetting()));
                      },
                      child: Container(
                        height: 60.0,
                        color: Colors.black12,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(22.0),
                            child: Text("View Account Setting"),
                          ),
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
                      height: 60,
                      color: Colors.black12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("Dark Theme"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.lightbulb_outline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text("Notificaion"),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Switch(value: true, onChanged: null)
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    color: Colors.blueGrey,
                  ),
                  SizedBox(
                    child: InkWell(
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                        User user = FirebaseAuth.instance.currentUser;
                        user.delete();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()));
                      },
                      child: Container(
                        height: 60,
                        color: Colors.black12,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Sign out"),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          }),

      /*ListView(
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
              title: Text(userid),
              subtitle: Text("heer@gmail.com"),
            ),
          ),
          Divider(
            height: 10.0,
            color: Colors.blueGrey,
          ),
          SizedBox(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccSetting()));
              },
              child: Container(
                height: 60.0,
                color: Colors.black12,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Text("View Account Setting"),
                  ),
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
              height: 60,
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Dark Theme"),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.lightbulb_outline,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Notificaion"),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Switch(value: true, onChanged: null)
                ],
              ),
            ),
          ),
          Divider(
            height: 30.0,
            color: Colors.blueGrey,
          ),
          SizedBox(
            child: InkWell(
              onTap: () {
                FirebaseAuth.instance.signOut();
                User user = FirebaseAuth.instance.currentUser;
                user.delete();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomeScreen()));
              },
              child: Container(
                height: 60,
                color: Colors.black12,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Sign out"),
                ),
              ),
            ),
          ),
        ],
      ),*/
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
  }
}
