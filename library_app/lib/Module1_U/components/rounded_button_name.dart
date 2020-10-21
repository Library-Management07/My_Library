import 'package:flutter/material.dart';
import 'package:library_app/Module1_U/components/text_field_container.dart';
import '../constants.dart';

class RoundedInputFieldName extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldName({
    Key key,
    this.hintText,
    this.icon = Icons.assignment_ind,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
