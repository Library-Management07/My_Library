import 'package:flutter/material.dart';
import 'package:library_app/CE/Sem3/Csem3.dart';

class sem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: S3Hs(),
    );
  }
}

class S3Hs extends StatefulWidget {
  @override
  _S3HsState createState() => _S3HsState();
}

class _S3HsState extends State<S3Hs> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Csem3()));
                }),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("SEM3-Hs"),
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
    bookname: "The Surprising path to greater creativity",
    avail: '1',
  ),
  Books(
    bookname: "The secrets of creative genius",
    avail: '0',
  ),
];
