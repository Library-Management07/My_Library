import 'package:flutter/material.dart';
import 'package:library_app/Bookstore/CE.dart';
import 'package:library_app/CE/Sem1/S1Env.dart';
import 'package:library_app/CE/Sem1/S1Math.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:library_app/Bookstore/BookStore.dart';
import 'package:expansion_card/expansion_card.dart';

class sem1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Csem1(),
    );
  }
}
class Csem1 extends StatefulWidget {
  @override
  _Csem1State createState() => _Csem1State();
}

class _Csem1State extends State<Csem1> {
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
                title: Text("SEM1"),
                background: Image.asset(
                  "assets/Menu_Home.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 220.0,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>S1Math()));
                    },
                    child: Container(
                      child: Center(child: Text("Maths",style: TextStyle(fontWeight: FontWeight.bold,),)),
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
                    onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>S1Env()));},
                    child: Container(
                      child: Center(child: Text("Enviornment",style: TextStyle(fontWeight: FontWeight.bold,),)),
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

