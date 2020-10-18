import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_app/HomeScreen.dart';
import 'package:random_color/random_color.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAcc(),
    );
  }
}

class MyAcc extends StatefulWidget {
  @override
  _MyAccState createState() => _MyAccState();
}

class _MyAccState extends State<MyAcc> {
  Widget _contactList(String name,String img,String email) {
    RandomColor _randomColor = RandomColor();
    Color _color = _randomColor.randomColor(
      colorBrightness: ColorBrightness.light,
    );
    var nameInit =name[0].toUpperCase();
    if(img.length>0)
      {
        nameInit="";
      }
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
            leading: CircleAvatar(
              backgroundColor: _color,
              foregroundColor: Colors.black,
              backgroundImage: NetworkImage(img),
              radius: 35.0,
              child: Text(nameInit,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),),
            ),
          title: Text(name,style:TextStyle(
            fontSize: 25.0,
          ),),
          subtitle: Text(email,style:TextStyle(
            fontSize: 15.0,
          ),),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_screen()));
                }
            ),
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
      body:
          ListView(
            children: [
              _contactList("Heer", "","heer@gmail.com"),
              Divider(height: 30.0,color: Colors.blueGrey,),
              SizedBox(
                child: InkWell(
                  onTap: (){

                  },
                  child: Container(
                    height: 60,
                    color: Colors.black12,
                    child: Text("Sign out"),
                  ),
                ),
              ),
              Divider(height: 30.0,color: Colors.blueGrey,),
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
