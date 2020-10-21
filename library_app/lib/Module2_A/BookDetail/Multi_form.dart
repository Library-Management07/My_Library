import 'package:flutter/material.dart';
import 'package:library_app/Module2_A/BookDetail/BookDetail.dart';
import 'package:library_app/Module2_A/BookDetail/Save.dart';

// ignore: camel_case_types
class Multi_form extends StatefulWidget {
  @override
  _Multi_formState createState() => _Multi_formState();
}

// ignore: camel_case_types
class _Multi_formState extends State<Multi_form> {
  List<Usere> users = [];
  List<UserForm> forms = [];
  Usere u = Usere();
  @override
  Widget build(BuildContext context) {
    forms.clear();
    for (int i = 0; i < users.length; i++) {
      forms.add(UserForm(
        key: GlobalKey(),
        user: users[i],
        onDelete: () => onDelete(i),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Book issued Details"),
        backgroundColor: Colors.purple,
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => save()));
            },
            child: Text('Save'),
          ),
        ],
      ),
      body: users.length <= 0
          ? Center(
              child: Container(
                child: Center(
                    child: Text("Add a form by tapping [+] button below")),
              ),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (_, i) => UserForm(
                user: users[i],
                onDelete: () => onDelete(i),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
        onPressed: onAddForm,
      ),
    );
  }

  void onDelete(int index) {
    setState(() {
      users.removeAt(index);
    });
  }

  void onAddForm() {
    setState(() {
      users.add(Usere());
    });
  }
}
