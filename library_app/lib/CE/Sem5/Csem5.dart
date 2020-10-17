import 'package:flutter/material.dart';
import 'package:library_app/Bookstore/CE.dart';
import 'package:library_app/CE/Sem5/S5Ajp.dart';
import 'package:library_app/CE/Sem5/S5Ap.net.dart';
import 'package:library_app/CE/Sem5/S5Cn.dart';
import 'package:library_app/CE/Sem5/S5Map.dart';
import 'package:library_app/CE/Sem5/S5Se.dart';
import 'package:library_app/CE/Sem5/S5da.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:library_app/Bookstore/BookStore.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:library_app/CE/Sem5/S5hs.dart';
import 'package:library_app/CE/Sem5/S5Mad.dart';

class sem5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Csem5(),
    );
  }
}

class Csem5 extends StatefulWidget {
  @override
  _Csem5State createState() => _Csem5State();
}

class _Csem5State extends State<Csem5> {
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
              title: Text("SEM5"),
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
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>S5Map()));
                  },
                  child: Container(
                    child: Center(child: Text("Microprocessor architecture and assembly programming",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                       onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>S5da()));},
                  child: Container(
                    child: Center(child: Text("Designing and analysis of Algorithms",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                  onTap: (){  Navigator.push(context,MaterialPageRoute(builder: (context)=>S5Se()));},
                  child: Container(
                    child: Center(child: Text("Software engineering",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>S5Cn()));},
                  child: Container(
                    child:  Center(child: Text("Computer Networks",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>S5Ajp()));},
                  child: Container(
                    child: Center(child: Text("Advance Java Programming",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>S5Apnet()));},
                  child: Container(
                    child: Center(child: Text("Advance Programming using .net",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>S5Mad()));},
                  child: Container(
                    child: Center(child: Text("Mobile application development",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                  onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>S5Hs()));},
                  child: Container(
                    child: Center(child: Text("Hs",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
