import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class AccountSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AccSetting(),
    );
  }
}

class AccSetting extends StatefulWidget {
  @override
  _AccSettingState createState() => _AccSettingState();
}

class _AccSettingState extends State<AccSetting> {
  Widget _contactList(String name, String img, String email) {
    RandomColor _randomColor = RandomColor();
    Color _color = _randomColor.randomColor(
      colorBrightness: ColorBrightness.light,
    );
    var nameInit = name[0].toUpperCase();
    if (img.length > 0) {
      nameInit = "";
    }
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: _color,
          foregroundColor: Colors.black,
          backgroundImage: NetworkImage(img),
          radius: 35.0,
          child: Text(
            nameInit,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
        subtitle: Text(
          email,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }

  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                }),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("My Account"),
              background: Image.asset(
                "assets/Menu_Home.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: ListView(
        children: [
          _contactList("Heer", "", "heer@gmail.com"),
          Divider(
            height: 10.0,
            color: Colors.blueGrey,
          ),
          SizedBox(
            child: Container(
              height: 60.0,
              color: Colors.black12,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text("UserName:"),
                ),
              ),
            ),
          ),
          Divider(
            height: 30.0,
            color: Colors.blueGrey,
          ),
          SizedBox(
            child: Container(
              height: 60.0,
              color: Colors.black12,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text("Email Id:"),
                ),
              ),
            ),
          ),
          Divider(
            height: 30.0,
            color: Colors.blueGrey,
          ),
          SizedBox(
            child: Container(
              height: 60.0,
              color: Colors.black12,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text("Contact Number: "),
                ),
              ),
            ),
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
