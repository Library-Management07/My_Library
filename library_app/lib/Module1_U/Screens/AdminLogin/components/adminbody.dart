import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:library_app/Module1_U/Screens/Login/components/background.dart';
import 'package:library_app/Module1_U/components/rounded_button.dart';
import 'package:library_app/Module1_U/components/rounded_button_email.dart';
import 'package:library_app/Module1_U/components/rounded_password_field.dart';
import 'package:library_app/Module2_A/HomeScreen2.dart';

// ignore: must_be_immutable
class AdminBody extends StatelessWidget {
  AdminBody({
    Key key,
  }) : super(key: key);
  final _auth = FirebaseAuth.instance;
  final db = FirebaseDatabase.instance.reference();
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
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/icons/login.png",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputFieldEmail(
              hintText: "Enter your Email",
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
              text: "LOGIN AS ADMIN",
              press: () async {
                _auth
                    .signInWithEmailAndPassword(
                        email: email.trim(), password: password.trim())
                    .then((firebaseUser) {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (__) => new Home_screen2()));
                }).catchError(
                  (e) {
                    print(e);
                  },
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
