import 'package:flutter/material.dart';
import 'package:library_app/Bookstore/CE.dart';
import 'package:library_app/CE/Sem6/PP.dart';
import 'package:library_app/CE/Sem6/S6Dw.dart';
import 'package:library_app/CE/Sem6/S6Ic.dart';
import 'package:library_app/CE/Sem6/S6Ios.dart';
import 'package:library_app/CE/Sem6/S6Ip.dart';
import 'package:library_app/CE/Sem6/S6Sop.dart';
import 'package:library_app/CE/Sem6/S6Tc.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:library_app/Bookstore/BookStore.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:library_app/CE/Sem6/S6Hs.dart';

class sem6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Csem6(),
    );
  }
}

class Csem6 extends StatefulWidget {
  @override
  _Csem6State createState() => _Csem6State();
}

class _Csem6State extends State<Csem6> {
  nested(){
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Ce()));
                }
            ),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("SEM6"),
              background: Image.asset(
                "assets/Menu_Home.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body:SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: 220.0,
                child: InkWell(
                  onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>S6Ios()));
                  },
                  child: Container(
                    child: Center(child: Text("Internals of operating System",style: TextStyle(fontWeight: FontWeight.bold,),)),
                    padding: EdgeInsets.only(top:30.0,bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("assets/sem.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 220.0,
                child: InkWell(
                       onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>S6Ic()));},
                  child: Container(
                    child: Center(child: Text("Information Security",style: TextStyle(fontWeight: FontWeight.bold,),)),
                    padding: EdgeInsets.only(top:30.0,bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("assets/sem.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 220.0,
                child: InkWell(
                  onTap: (){  Navigator.push(context,MaterialPageRoute(builder: (context)=>S6Tc()));},
                  child: Container(
                    child: Center(child: Text("Theory of Computation",style: TextStyle(fontWeight: FontWeight.bold,),)),
                    padding: EdgeInsets.only(top:30.0,bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("assets/sem.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 220.0,
                child: InkWell(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>S6Dw()));},
                  child: Container(
                    child:  Center(child: Text("Data Ware housing and data mining",style: TextStyle(fontWeight: FontWeight.bold,),)),
                    padding: EdgeInsets.only(top:30.0,bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("assets/sem.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 220.0,
                child: InkWell(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>S6Hs()));},
                  child: Container(
                    child: Center(child: Text("HS",style: TextStyle(fontWeight: FontWeight.bold,),)),
                    padding: EdgeInsets.only(top:30.0,bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("assets/sem.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 220.0,
                child: InkWell(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>S6Sop()));},
                  child: Container(
                    child: Center(child: Text("Service oriented Programming",style: TextStyle(fontWeight: FontWeight.bold,),)),
                    padding: EdgeInsets.only(top:30.0,bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("assets/sem.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 220.0,
                child: InkWell(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>S6Ip()));},
                  child: Container(
                    child: Center(child: Text("Digital Image Process",style: TextStyle(fontWeight: FontWeight.bold,),)),
                    padding: EdgeInsets.only(top:30.0,bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("assets/sem.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 220.0,
                child: InkWell(
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>S6PP()));},
                  child: Container(
                    child: Center(child: Text("Programming in Python",style: TextStyle(fontWeight: FontWeight.bold,),)),
                    padding: EdgeInsets.only(top:30.0,bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("assets/sem.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
  }
}
