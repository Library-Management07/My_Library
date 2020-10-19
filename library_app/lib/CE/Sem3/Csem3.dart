import 'package:flutter/material.dart';
import 'package:library_app/Bookstore/CE.dart';
import 'package:library_app/CE/Sem3/S3Maths.dart';
import 'package:library_app/CE/Sem3/S3Java.dart';
import 'package:library_app/CE/Sem3/S3Dcn.dart';
import 'package:library_app/CE/Sem3/S3Hs.dart';
import 'package:library_app/CE/Sem3/S3De.dart';

// ignore: camel_case_types
class sem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Csem3(),
    );
  }
}

class Csem3 extends StatefulWidget {
  @override
  _Csem3State createState() => _Csem3State();
}

class _Csem3State extends State<Csem3> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Ce()));
                }),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("SEM3"),
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => S3Maths()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Maths",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/sem.png"),
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => S3Java()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Java",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/sem.png"),
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => S3Dcn()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "DCN",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/sem.png"),
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => S3De()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "DE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/sem.png"),
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => S3Hs()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "HS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/sem.png"),
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
