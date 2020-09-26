import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home_screen extends StatefulWidget {
  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(50,53,94,50 ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: FlatButton(onPressed: (){},
                child:  Text('Account',textDirection:TextDirection.ltr ,style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),),
            ),
            margin: EdgeInsets.only(left: 70),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[Color.fromRGBO(129, 109, 198, 50),Color.fromRGBO(79, 103, 154, 50)],
              begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            height: 180,width: 500,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: FlatButton(onPressed: (){},
              child:  Text('Book Store',textDirection:TextDirection.ltr ,style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),),
            ), margin: EdgeInsets.only(left: 70),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[Color.fromRGBO(238,103 ,110 , 50),Color.fromRGBO(161,108 ,185, 50)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            height: 185,width: 500,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: FlatButton(onPressed: (){},
              child:  Text('My books',textDirection:TextDirection.ltr ,style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),),
            ),margin: EdgeInsets.only(left: 70),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[Color.fromRGBO(242,156 ,91 , 50),Color.fromRGBO(248, 106,99 , 50)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            height: 185,width: 500,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: FlatButton(onPressed: (){},
              child:  Text('Search',textDirection:TextDirection.ltr ,style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),),
            ), margin: EdgeInsets.only(left: 70),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors:[Color.fromRGBO(248,212 ,211 , 50),Color.fromRGBO(241, 113, 112, 50)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            height: 185,width: 500,
          ),
        ],
      ),
    );
  }
}
