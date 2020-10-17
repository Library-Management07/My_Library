import 'package:flutter/material.dart';
import 'package:library_app/Bookstore/CE.dart';
import 'package:library_app/CE/Sem4/S4DA.dart';
import 'package:library_app/CE/Sem4/S4Dms.dart';
import 'package:library_app/CE/Sem4/S4Hs.dart';
import 'package:library_app/CE/Sem4/S4Py.dart';
import 'package:library_app/CE/Sem4/S4Mco.dart';

class sem4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Csem4(),
    );
  }
}

class Csem4 extends StatefulWidget {
  @override
  _Csem4State createState() => _Csem4State();
}

class _Csem4State extends State<Csem4> {
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
              title: Text("SEM4"),
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
                        MaterialPageRoute(builder: (context) => S4Da()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Data Structure and Algorithms",
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
                        MaterialPageRoute(builder: (context) => S4Dms()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "DataBase Management System",
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
                        MaterialPageRoute(builder: (context) => S4Mco()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Microprocessor and Computer Organization",
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
                        MaterialPageRoute(builder: (context) => S4Py()));
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      "Programming in Python",
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
                        MaterialPageRoute(builder: (context) => S4Hs()));
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
/*class Books {
  Books({this.bookname,this.avail});
  String bookname;
  String avail;
}
final List<Books> _Books = <Books>[
  Books(
    bookname: "An introduction to data structures with application",
    avail: '1',
  ),
  Books(
    bookname: "Data structure with C",
    avail: '0',
  ),
  Books(
    bookname: "Introduction to Algorithms",
    avail: '0',
  ),
  Books(
    bookname: "Data structures and algorithms",
    avail: '0',
  ),
  Books(
    bookname: "Database system concepts",
    avail: '0',
  ),
  Books(
    bookname: "An introduction to DataBase System",
    avail: '0',
  ),
  Books(
    bookname: "Computer Organization and architecture designing for perfomance",
    avail: '0',
  ),
  Books(
    bookname: "Structured Computer Organization",
    avail: '0',
  ),
  Books(
    bookname: "The essential of computer organization and architecture.",
    avail: '0',
  ),
  Books(
    bookname: "Computer Architecture",
    avail: '0',
  ),
  Books(
    bookname: "Begining Python from novice to professional",
    avail: '0',
  ),
  Books(
    bookname: "Mastering DJANGO: Core",
    avail: '0',
  ),
  Books(
    bookname: "Human Values and ethics in work place",
    avail: '0',
  ),
  Books(
    bookname: "Ethics for everyone",
    avail: '0',
  ),
  Books(
    bookname: "Values and ethics for 21st Century.",
    avail: '0',
  ),
];
*/
