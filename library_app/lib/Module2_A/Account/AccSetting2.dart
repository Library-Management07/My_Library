import 'package:flutter/material.dart';
import 'package:library_app/Module2_A/Account/MyAcc2.dart';

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
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAccount()));
                }),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.purple[700],
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
          Padding(
            padding: EdgeInsets.all(5.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.purple[700],
                child: ClipOval(
                  child: SizedBox(
                    width: 100,
                    height: 80,
                  ),
                ),
              ),
              title: Text("Patel Jay"),
              subtitle: Text("pateljay24oct@gmail.com"),
            ),
          ),
          Divider(
            height: 10.0,
            color: Colors.blueGrey,
          ),
          // SizedBox(
          //   child: Container(
          //     height: 60.0,
          //     color: Colors.black12,
          //     child: Container(
          //       child: Padding(
          //         padding: const EdgeInsets.all(22.0),
          //         child: Text("Id: 19ce100"),
          //       ),
          //     ),
          //   ),
          // ),
          // Divider(
          //   height: 30.0,
          //   color: Colors.blueGrey,
          // ),
          SizedBox(
            child: Container(
              height: 60.0,
              color: Colors.black12,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Text("Email Id: pateljay24oct@gmail.com"),
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
                  child: Text("Contact Number: 9724975288"),
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