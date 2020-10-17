import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'HomeScreen.dart';
import 'SignUp.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  final db = FirebaseDatabase.instance.reference();
  String email, password, name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: const EdgeInsets.symmetric(vertical: 30.0),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color(0xFF73AEF5),
              Color(0xFF61A4F1),
              Color(0xFF478DE0),
              Color(0xFF398AE5),
              Colors.blue[700],
              Colors.blue[800],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60.0,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text("Welcome Back",
                      style: TextStyle(color: Colors.white, fontSize: 18.0)),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 180),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue,
                              // color: Color.fromRGBO(255, 95, 27, .3),
                              blurRadius: 20.0,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                  right: 10.0, top: 10.0, bottom: 10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey[200],
                                  ),
                                ),
                              ),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  email = value;
                                },
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email, size: 23),
                                  hintText: "Email or phone number",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  right: 10.0, top: 10.0, bottom: 10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey[200],
                                  ),
                                ),
                              ),
                              child: TextField(
                                obscureText: true,
                                onChanged: (value) {
                                  password = value;
                                },
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock, size: 21),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      FlatButton(
                          child: new Text(
                            "Forget password?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          onPressed: () {}),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        elevation: 5.0,
                        child: new Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 1.5),
                        ),
                        padding: EdgeInsets.only(
                            left: 93.0, right: 93.0, bottom: 12.0, top: 12.0),
                        color: Colors.blueAccent,
                        onPressed: () {
                          _auth
                              .signInWithEmailAndPassword(
                                  email: email.trim(),
                                  password: password.trim())
                              .then((firebaseUser) {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (__) => new Home_screen()));
                          }).catchError(
                            (e) {
                              print(e);
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "-OR-",
                        style: TextStyle(color: Colors.grey),
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        elevation: 5.0,
                        child: new Text(
                          "SIGNUP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 1.5),
                        ),
                        padding: EdgeInsets.only(
                            left: 93.0, right: 93.0, bottom: 12.0, top: 12.0),
                        color: Colors.blueAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (__) => new SignUp()));
                        },
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      /*SignInButton(
                          buttonType: ButtonType.google,
                          btnColor: Colors.white60,
                          onPressed: () {}
                          ),*/
                    ],
                  ),
                ),
              ),
            ),
            /*Padding(
                padding: EdgeInsets.all(30),
              child: Center(
                child: new Text(
                  "Doesn't have Account? REGISTER",
                  style: TextStyle(color: Colors.black),
                ),
              )
            )*/
          ],
        ),
      ),
    );
  }
}
