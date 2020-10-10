import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_app/Bookstore/BookStore.dart';
class Home_screen extends StatefulWidget {
  @override
  _Home_screenState createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body:
          Container(
            /*decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.white70],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),*/
            child: Column(
              children:[
                Container(
                  height: 200,
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text("My library",style: TextStyle(
                        fontStyle: FontStyle.italic ,
                        fontSize: 40.0,
                      ),),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:AssetImage("assets/Menu_Home.png"),
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
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>App()));
                          },
                          child: Container(
                            child: Text("Book Store",style: TextStyle(fontWeight: FontWeight.bold,),),
                            padding: EdgeInsets.only(top:70,left: 50),
                            margin: EdgeInsets.all(10.0),
                            //height: 170.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/One.png"),
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
                          onTap: (){
                        //    Navigator.push(context,MaterialPageRoute(builder: (context)=>App()));
                          },
                          child: Container(
                            child: Text("Mybook",style: TextStyle(fontWeight: FontWeight.bold,),),
                            padding: EdgeInsets.only(top:100, left: 70),
                            margin: EdgeInsets.all(10.0),
                          //  height: 230.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/One.png"),
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
                            onTap: (){
                              //    Navigator.push(context,MaterialPageRoute(builder: (context)=>App()));
                            },
                            child: Container(
                              child: Text("Search",style: TextStyle(fontWeight: FontWeight.bold,),),
                              padding: EdgeInsets.only(top:100, left: 70),
                              margin: EdgeInsets.all(10.0),
                              height: 230.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage("assets/One.png"),
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
                          onTap: (){
                            //    Navigator.push(context,MaterialPageRoute(builder: (context)=>App()));
                          },
                          child: Container(
                            child: Text("My account",style: TextStyle(fontWeight: FontWeight.bold,),),
                            height: 170.0,
                            padding: EdgeInsets.only(top:70,left: 50),
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:AssetImage("assets/One.png"),
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
