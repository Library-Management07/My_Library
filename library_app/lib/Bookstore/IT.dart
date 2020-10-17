import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:library_app/lib/BookStore';

class ITDepart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: It(),
    );
  }
}

class It extends StatefulWidget {
  @override
  _ItState createState() => _ItState();
}

class _ItState extends State<It> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => App()));
                }),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("IT"),
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
                    //    Navigator.push(context,MaterialPageRoute(builder: (context)=>));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "SEM1",
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
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      "SEM2",
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
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      "SEM3",
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
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      "SEM4",
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
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      "SEM5",
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
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      "SEM6",
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
                  onTap: () {},
                  child: Container(
                    child: Center(
                        child: Text(
                      "SEM7",
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
