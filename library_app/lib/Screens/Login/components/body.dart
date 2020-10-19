import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:library_app/Screens/Login/components/background.dart';
import 'package:library_app/Screens/Signup/signup_screen.dart';
import 'package:library_app/components/already_have_an_account.dart';
import 'package:library_app/components/rounded_button.dart';
import 'package:library_app/components/rounded_input_field.dart';
import 'package:library_app/components/rounded_password_field.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  Body({
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
              text: "LOGIN",
              press: () async {
                _auth
                    .signInWithEmailAndPassword(
                        email: email.trim(), password: password.trim())
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
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
