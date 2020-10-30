import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_app/Module1_U/Account/MyAcc.dart';
import 'package:library_app/Module1_U/Bookstore/CE.dart';
import 'package:library_app/Module1_U/Mybook/Mybook.dart';
import 'package:library_app/Module1_U/Search/Search.dart';

// ignore: camel_case_types
class Home_screen extends StatefulWidget {
  @override
  _Home_screenState createState() => _Home_screenState();
}

// ignore: camel_case_types
class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.white10,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/a1.png"),
              fit: BoxFit.cover,
            ),
            //borderRadius: BorderRadius.circular(),
          ),
          child: Column(
            children: [
              Container(
                height: 160,
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "My library",
                        style: TextStyle(
                          //fontStyle: FontStyle.,
                          fontSize: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Menu_Home.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 180.0,
                        width: 180.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => CE()));
                          },
                          child: Container(
                            child: Text(
                              "Book Store",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            padding: EdgeInsets.only(top: 70, left: 45),
                            margin: EdgeInsets.all(10.0),
                            //height: 170.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/c1.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 180.0,
                        width: 180.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyBook()));
                          },
                          child: Container(
                            child: Text(
                              "Mybook",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            padding: EdgeInsets.only(top: 70, left: 55),
                            margin: EdgeInsets.all(10.0),
                            //  height: 230.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/c2.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 180.0,
                        width: 180.0,
                        child: SizedBox(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Search()));
                            },
                            child: Container(
                              child: Text(
                                "Search",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              padding: EdgeInsets.only(top: 70, left: 60),
                              margin: EdgeInsets.all(10.0),
                              height: 230.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/c3.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 180.0,
                        width: 180.0,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Account()));
                          },
                          child: Container(
                            child: Text(
                              "My account",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            height: 170.0,
                            padding: EdgeInsets.only(top: 70, left: 45),
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/c4.png"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
