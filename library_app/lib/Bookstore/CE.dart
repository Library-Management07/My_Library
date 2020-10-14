import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///E:/Project/library_app/lib/CE/Sem1/Csem1.dart';
import 'file:///E:/Project/library_app/lib/CE/Sem2/Csem2.dart';
import 'package:library_app/CE/Sem3/Csem3.dart';
import 'file:///E:/Project/library_app/lib/CE/Sem4/Csem4.dart';
import 'file:///E:/Project/library_app/lib/CE/Sem5/Csem5.dart';
import 'file:///E:/Project/library_app/lib/CE/Sem6/Csem6.dart';
import 'file:///E:/Project/library_app/lib/CE/Sem7/Csem7.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:library_app/Bookstore/BookStore.dart';

class CEDepart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ce(),
    );
  }
}
class Ce extends StatefulWidget {
  @override
  _CeState createState() => _CeState();
}

class _CeState extends State<Ce> {
  nested(){
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>App()));
                  }
              ),
              expandedHeight: 200.0,
              floating: false,
              backgroundColor: Colors.lightGreen,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("CE"),
                background: Image.asset(
                  "assets/Menu_Home.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 220.0,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Csem1()));
                    },
                    child: Container(
                      child: Center(child: Text("SEM1",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                    onTap: (){  Navigator.push(context,MaterialPageRoute(builder: (context)=>Csem2()));},
                    child: Container(
                      child: Center(child: Text("SEM2",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                    onTap: (){   Navigator.push(context,MaterialPageRoute(builder: (context)=>sem3()));},
                    child: Container(
                      child: Center(child: Text("SEM3",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                    onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Csem4()));},
                    child: Container(
                      child:  Center(child: Text("SEM4",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                    onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>Csem5()));},
                    child: Container(
                      child: Center(child: Text("SEM5",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                    onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>Csem6()));},
                    child: Container(
                      child:  Center(child: Text("SEM6",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                    onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>Csem7()));},
                    child: Container(
                      child:  Center(child: Text("SEM7",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
