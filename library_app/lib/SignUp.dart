import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:library_app/LoginPage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class UserDatabase {
  String uid;
  UserDatabase({this.uid});

  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection('users');

  Future updateuserdata(String email, String pass) async {
    return await usercollection
        .doc(uid)
        .set({"email": email, "paasword": pass, "uid": uid});
  }
}

class MUser {
  final String uid;
  MUser({this.uid});
}

MUser _userFromFirebaseUser(User user) {
  return user != null ? MUser(uid: user.uid) : null;
}

Stream<MUser> get user {
  final _auth = FirebaseAuth.instance;
  return _auth.authStateChanges().map(_userFromFirebaseUser);
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  String email, password, name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
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
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Sign up"),
            ),
          ),
        ];
      },
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.person), onPressed: null),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        name = value;
                      },
                      decoration: InputDecoration(hintText: 'Username'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.account_box), onPressed: null),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'ID no'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.email), onPressed: null),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        setState(() {
                          email = value;
                        });
                      },
                      decoration: InputDecoration(hintText: 'Email'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.lock_open), onPressed: null),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: TextField(
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      decoration: InputDecoration(hintText: 'Password'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7.0),
              child: Container(
                  height: 50,
                  child: RaisedButton(
                      color: Colors.lightGreen,
                      child: Text("Sign up"),
                      onPressed: () async {
                        try {
                          UserCredential result =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          User user = result.user;
                          try {
                            /*await user.sendEmailVerification();
                          return user.uid;*/
                          } catch (e) {
                            print(
                                "An error occured while trying to send email verification");
                            print(e.toString());
                          }
                          await UserDatabase(uid: user.uid)
                              .updateuserdata(email, password);
                          return _userFromFirebaseUser(user);
                        } catch (e) {
                          print(e.toString());
                          return null;
                        }
                      })),
            ),
          ),
        ],
      ),
    );
  }
}

/*
                    dynamic str = await _auth.createUserWithEmailAndPassword(
                      email: email.trim(), password: password.trim(),)
                        .then((signedInUser) {
                      _firestore.collection('users')
                          .add({'email': email, 'pass': password})
                          .then((value) {
                        if (signedInUser != null) {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (__) => new LoginPage()));
                        }
                      }).catchError((e) {
                        print(e);
                      }).catchError((e) {
                        print(e);
                      });
                    },);
                    if (str != null) {
                      FirebaseDatabase.instance.reference()
                          .child('users')
                          .child(email)
                          .set({
                        'username': name,
                        'Id no.': '19ce100'
                      });
                    }
                  */
