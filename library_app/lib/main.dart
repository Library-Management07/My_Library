import 'package:flutter/material.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:library_app/Bookstore/BookStore.dart';
import 'dart:ui';

void main() {
  runApp ( MaterialApp(
    initialRoute: '/home',
    routes:<String, WidgetBuilder> {
      //'/':(context) =>Loading(),
      '/home': (context) =>Home_screen(),
      '/bookstore':(context)=>App(),
      },
      debugShowCheckedModeBanner: false,
      ),
  );
}
/*void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup(),
    ),
  );
}
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  //    Navigator.push(context,MaterialPageRoute(builder: (context)=>Home_screen()));
                }
            ),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Sign up"),
              background: Image.asset(
                "assets/Menu_Home.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
                children: [
                  IconButton(
                        icon: Icon(Icons.person), onPressed: null
                  ),
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 20,left: 10),
                        child: TextField(
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
                IconButton(
                    icon: Icon(Icons.account_box), onPressed: null
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20,left: 10),
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
                IconButton(
                    icon: Icon(Icons.email_outlined), onPressed: null
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20,left: 10),
                    child: TextField(
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
                IconButton(
                    icon: Icon(Icons.lock_open), onPressed: null
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20,left: 10),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Password'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.all(15.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(7.0),
                  child: Container(
                  height: 50,
                    child: RaisedButton(
                      onPressed: (){},
                      color: Colors.lightGreen,
                      child: Text("Sign in"),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
  }
}*/

/*class LoginPage extends StatelessWidget {
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
              Colors.blueGrey[200],
              Colors.purple[800],
              Colors.orange[400],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80.0,
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
                    height: 10.0,
                  ),
                  Text("Welcome Back",
                      style: TextStyle(color: Colors.white, fontSize: 18.0)),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(35),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(255, 95, 27, .3),
                              blurRadius: 20.0,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey[200],
                                  ),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Email or phone number",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey[200],
                                  ),
                                ),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
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
                        height: 30,
                      ),
                      Text(
                        "Forget password?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange[900],
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        "Contiune with using this..",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                              child: Center(
                                child: Text(
                                  "Facebook",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black,
                              ),
                              child: Center(
                                child: Text(
                                  "Create",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/