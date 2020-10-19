import 'or_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:library_app/Screens/Login/login_screen.dart';
import 'package:library_app/Screens/Signup/componets/background.dart';
import 'package:library_app/components/already_have_an_account.dart';
import 'package:library_app/components/rounded_button.dart';
import 'package:library_app/components/rounded_input_field.dart';
import 'package:library_app/components/rounded_password_field.dart';

class UserDatabase {
  String uid;
  UserDatabase({this.uid});

  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection('users');

  Future updateuserdata(String email, String pass) async {
    return await usercollection
        .doc(uid)
        .set({"email": email, "password": pass, "uid": uid});
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

// ignore: must_be_immutable
class Body extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  String email, password, name;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/signup.png",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value;
              },
            ),
            RoundedButton(
                text: "SIGNUP",
                press: () async {
                  UserCredential result =
                      await _auth.createUserWithEmailAndPassword(
                          email: email, password: password);
                  User user = result.user;
                  User use = FirebaseAuth.instance.currentUser;
                  if (!use.emailVerified) {
                    await use.sendEmailVerification();
                  }
                  FirebaseAuth us = FirebaseAuth.instance;
                  String code = 'xxxxxx';
                  try {
                    await us.checkActionCode(code);
                    await us.applyActionCode(code);
                    us.currentUser.reload();
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'invalid-action-code') {
                      print('The code is invalid.');
                    }
                  }
                  await UserDatabase(uid: user.uid)
                      .updateuserdata(email, password);
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (__) => new Home_screen()));
                }),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
          ],
        ),
      ),
    );
  }
}
