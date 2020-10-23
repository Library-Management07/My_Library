import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_app/Module1_U/Bookstore/CE.dart';

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
        body: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "My library",
                        style: TextStyle(
                          fontFamily: 'PlayfairDisplay',
                          fontWeight: FontWeight.w400,
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
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Container(
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
                              fontFamily: 'PlayfairDisplay',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          padding: EdgeInsets.only(top: 70, left: 50),
                          margin: EdgeInsets.all(10.0),
                          //height: 170.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/One.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 260.0,
                      width: 200.0,
                      child: InkWell(
                        onTap: () {
                          //    Navigator.push(context,MaterialPageRoute(builder: (context)=>App()));
                        },
                        child: Container(
                          child: Text(
                            "Mybook",
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          padding: EdgeInsets.only(top: 100, left: 70),
                          margin: EdgeInsets.all(10.0),
                          //  height: 230.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/One.png"),
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
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 260.0,
                      width: 200.0,
                      child: SizedBox(
                        child: InkWell(
                          onTap: () {
                            //    Navigator.push(context,MaterialPageRoute(builder: (context)=>App()));
                          },
                          child: Container(
                            child: Text(
                              "Search",
                              style: TextStyle(
                                fontFamily: 'PlayfairDisplay',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            padding: EdgeInsets.only(top: 100, left: 70),
                            margin: EdgeInsets.all(10.0),
                            height: 230.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/One.png"),
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
                          //    Navigator.push(context,MaterialPageRoute(builder: (context)=>MyAcc()));
                        },
                        child: Container(
                          child: Text(
                            "My account",
                            style: TextStyle(
                              fontFamily: 'PlayfairDisplay',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          height: 170.0,
                          padding: EdgeInsets.only(top: 70, left: 50),
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/One.png"),
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
            ],
          ),
        ),
      ),
    );
  }
}
