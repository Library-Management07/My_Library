import 'package:flutter/material.dart';

class Save extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: save(),
    );
  }
}

// ignore: camel_case_types
class save extends StatefulWidget {
  @override
  _saveState createState() => _saveState();
}

// ignore: camel_case_types
class _saveState extends State<save> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Wrap(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: _details.length,
              itemBuilder: (context, index) {
                final details = _details[index];
                return ExpansionTile(
                  title: ListTile(
                    leading: Icon(Icons.person),
                    title: Text(details.id),
                  ),
                  children: [
                    ListTile(
                      title: Text("Email id: " + details.email),
                      leading: Icon(Icons.email),
                    ),
                    ListTile(
                      title: Text("Book name: " + details.bname),
                      leading: Icon(Icons.library_books),
                    ),
                  ],
                );
              },
            ),
          ],
        ));
  }
}

class Details {
  Details({this.id, this.email, this.bname});
  String id;
  String email;
  String bname;
}

final List<Details> _details = <Details>[
  Details(
    id: '098',
    email: 'heer',
    bname: 'qwer',
  ),
];
