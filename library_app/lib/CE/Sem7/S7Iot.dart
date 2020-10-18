import 'package:flutter/material.dart';
import 'package:library_app/CE/Sem7/Csem7.dart';

class sem7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: S7Iot(),
    );
  }
}

class S7Iot extends StatefulWidget {
  @override
  _S7IotState createState() => _S7IotState();
}

class _S7IotState extends State<S7Iot> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Csem7()));
                }),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("SEM7-IOT"),
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
            itemBuilder: (context, index) {
              final books = _Books[index];
              return ExpansionTile(
                title: ListTile(
                  title: Text(
                    books.bookname,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                children: [
                  ListTile(
                    title: Text("Available: " + books.avail),
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
  Books({this.bookname, this.avail});
  String bookname;
  String avail;
}

final List<Books> _Books = <Books>[
  Books(
    bookname: "Internet of things: Principles and paradigms",
    avail: '0',
  ),
];
