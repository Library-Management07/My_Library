import 'package:flutter/material.dart';
import 'package:library_app/Module1_U/Screens/AdminLogin/adminlogin_screen.dart';
import 'package:library_app/Module1_U/Screens/Login/login_screen.dart';
import 'package:library_app/Module1_U/Screens/Signup/signup_screen.dart';
import 'package:library_app/Module1_U/Screens/Welcome/components/background.dart';
import 'package:library_app/Module1_U/components/rounded_button.dart';
import 'package:library_app/Module1_U/components/rounded_button_code.dart';

class Body extends StatelessWidget {
  String code, dcode = "qwerty";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO MY LIBRARY",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/icons/chat.png",
              height: size.height * 0.30,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedInputFieldCode(
                hintText: "Enter Code For Admin Login",
                onChanged: (value) {
                  code = value;
                }),
            RoundedButton(
              text: "Verify",
              press: () {
                if (code == dcode) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AdminLogin();
                      },
                    ),
                  );
                }
              },
            ),
            RoundedButton(
              text: "LOGIN AS STUDENT",
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
            RoundedButton(
              text: "SIGN UP",
              //color: Colors.purple[700],
              // textColor: Colors.black,
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
