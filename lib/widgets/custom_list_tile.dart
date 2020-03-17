
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget{
  final String text;
  final Icon icon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0, right:10.0, top:5.0, bottom: 5.0),
      child: Card(
        elevation: 5,
        child: DecoratedBox(
          decoration: BoxDecoration(
//            border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.circular(4.0),
            color: Color(0xff3E7A16),
          ),
          child: ListTile(
            leading: icon,
            title: Text(text),
            onTap: this.onTap,
          ),
        ),
      ),
    );
  }

  CustomListTile({this.text, this.icon, this.onTap});


}