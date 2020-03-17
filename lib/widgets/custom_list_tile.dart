
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget{
  final String text;
  final Icon icon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color:Colors.red),

        ),
        child: ListTile(
          leading: icon,
          title: Text(text),
          onTap: this.onTap,
        ),
      ),
    );
  }

  CustomListTile({this.text, this.icon, this.onTap});


}