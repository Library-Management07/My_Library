import 'package:flutter/material.dart';
import 'package:library_app/CE/Sem4/Csem4.dart';
import 'package:flutter/material.dart';
import 'package:library_app/Bookstore/CE.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:library_app/Bookstore/BookStore.dart';
import 'package:expansion_card/expansion_card.dart';

class sem4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: S4Py(),
    );
  }
}

class S4Py extends StatefulWidget {
  @override
  _S4PyState createState() => _S4PyState();
}

class _S4PyState extends State<S4Py> {
  nested(){
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Csem4()));
                }
            ),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("SEM4-PY"),
              background: Image.asset(
                "assets/Menu_Home.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: Wrap(
        spacing: 10.0,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: _Books.length,
            itemBuilder: (context,index){
              final books=_Books[index];
              return ExpansionTile(
                title: ListTile(
                  title: Text(books.bookname,style:
                  TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                children: [
                  ListTile(
                    title: Text("Available: "+ books.avail),
                  ),
                ],
              );
            },
          ),
        ],
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
class Books {
  Books({this.bookname,this.avail});
  String bookname;
  String avail;
}
final List<Books> _Books = <Books>[
  Books(
    bookname: "begining Python from novice to professional",
    avail: '1',
  ),
  Books(
    bookname: "Mastering DJANGO: Core",
    avail: '0',
  ),
];
