import 'package:flutter/material.dart';
import 'package:library_app/Bookstore/CE.dart';
import 'package:library_app/CE/Sem7/S7Bd.dart';
import 'package:library_app/CE/Sem7/S7cc.dart';
import 'package:library_app/CE/Sem7/S7dp.dart';
import 'package:library_app/CE/Sem7/S7ml.dart';
import 'package:library_app/CE/Sem7/S7wm.dart';
import 'package:library_app/CE/Sem7/S7Iot.dart';
import 'package:library_app/CE/Sem7/S7bt.dart';

// ignore: camel_case_types
class sem7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Csem7(),
    );
  }
}

class Csem7 extends StatefulWidget {
  @override
  _Csem7State createState() => _Csem7State();
}

class _Csem7State extends State<Csem7> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => CE()));
                }),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("SEM7"),
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
                        MaterialPageRoute(builder: (context) => S7bd()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Big Data Analysis",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Round.png"),
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
                        MaterialPageRoute(builder: (context) => S7dp()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Design of Language Processor",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Round.png"),
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
                        MaterialPageRoute(builder: (context) => S7cc()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Cloud Computing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Round.png"),
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
                        MaterialPageRoute(builder: (context) => S7Iot()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Internet of things",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Round.png"),
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
                        MaterialPageRoute(builder: (context) => S7bt()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Blockchain technology",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Round.png"),
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
                        MaterialPageRoute(builder: (context) => S7wm()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Wireless Communication and mobile computing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Round.png"),
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
                        MaterialPageRoute(builder: (context) => S7ml()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Machine Learning",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                    margin: EdgeInsets.all(10.0),
                    //  height: 230.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Round.png"),
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
