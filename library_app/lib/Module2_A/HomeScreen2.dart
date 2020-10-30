import 'package:flutter/material.dart';
import 'package:library_app/Module2_A/Account/MyAcc2.dart';
import 'package:library_app/Module2_A/BookDetail/Multi_form.dart';
import 'package:library_app/Module2_A/StudentDetail/StudentDetail.dart';
import 'package:library_app/Module2_A/bookstore_A/bookinfo.dart';

// ignore: camel_case_types
class Home_screen2 extends StatefulWidget {
  @override
  _Home_screen2State createState() => _Home_screen2State();
}

// ignore: camel_case_types
class _Home_screen2State extends State<Home_screen2> {
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
                                MaterialPageRoute(builder: (context) => bi()));
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
                                    builder: (context) => Multi_form()));
                          },
                          child: Container(
                            child: Text(
                              "Book Detail",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            padding: EdgeInsets.only(top: 70, left: 45),
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
                                      builder: (context) => StudentDetail()));
                            },
                            child: Container(
                              child: Text(
                                "Student Detail",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              padding: EdgeInsets.only(top: 70, left: 35),
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
                                    builder: (context) => Account1()));
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
