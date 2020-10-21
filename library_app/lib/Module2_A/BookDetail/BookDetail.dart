import 'package:flutter/material.dart';
import 'package:library_app/Module2_A/HomeScreen2.dart';

class BookDetail extends StatefulWidget {
  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_screen2()));
                }),
            expandedHeight: 200.0,
            floating: false,
            backgroundColor: Colors.lightGreen,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Book Detail"),
              background: Image.asset(
                "assets/Menu_Home.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: UserForm(
        user: User(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: nested(),
    );
  }
}

typedef OnDelete();

class UserForm extends StatefulWidget {
  final User user;
  final state = _UserFormState();
  final OnDelete onDelete;
  UserForm({Key key, this.user, this.onDelete}) : super(key: key);
  @override
  _UserFormState createState() => state;

  bool isValid() => state.validate();
}

class _UserFormState extends State<UserForm> {
  final form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Card(
          child: Form(
            key: form,
            child: Column(
              children: [
                AppBar(
                  title: Text("User Form"),
                  centerTitle: true,
                  backgroundColor: Colors.purple,
                  leading: Icon(Icons.people),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: widget.onDelete,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    initialValue: widget.user.email,
                    onSaved: (val) => widget.user.email = val,
                    validator: (val) => val.contains('@')
                        ? 'Email is valid'
                        : 'Email is invalid',
                    decoration: InputDecoration(
                      labelText: 'Email :',
                      hintText: 'Enter Email',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    initialValue: widget.user.id,
                    onSaved: (val) => widget.user.id = val,
                    validator: (val) =>
                        val.contains('ce') ? 'Id is valid' : 'Id is invalid',
                    decoration: InputDecoration(
                      labelText: 'Id: ',
                      hintText: 'Enter Id',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    initialValue: widget.user.bname,
                    onSaved: (val) => widget.user.bname = val,
                    validator: (val) => val.length > 3
                        ? 'Bookname is valid'
                        : 'Book Name is invalid',
                    decoration: InputDecoration(
                      labelText: 'Book Name: ',
                      hintText: 'Enter BookName',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  bool validate() {
    var valid = form.currentState.validate();
    if (valid) form.currentState.save();
    return valid;
  }
}

class User {
  String id;
  String email;
  String bname;
  User({this.id = '', this.email = ' ', this.bname = ''});
}
