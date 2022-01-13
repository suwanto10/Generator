import 'package:flutter/material.dart';
import 'package:newlogin/components/text_field_container.dart';
import 'package:newlogin/constants.dart';

class RoundedInputAddress extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputAddress({
    Key key,
    this.hintText,
    this.icon = Icons.home_filled,
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
