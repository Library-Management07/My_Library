import 'package:flutter/material.dart';
import 'package:library_app/CE/Sem3/Csem3.dart';

// ignore: camel_case_types
class sem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: S3Dcn(),
    );
  }
}

class S3Dcn extends StatefulWidget {
  @override
  _S3DcnState createState() => _S3DcnState();
}

class _S3DcnState extends State<S3Dcn> {
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
              title: Text("SEM3-DCN"),
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

// ignore: non_constant_identifier_names
final List<Books> _Books = <Books>[
  Books(
    bookname: "Data Communication and networking",
    avail: '1',
  ),
  Books(
    bookname: "Data and computer communication",
    avail: '0',
  ),
];
