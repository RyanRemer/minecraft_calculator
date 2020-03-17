import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minecraft Calculator"),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color:Colors.red),

            ),
            child: ListTile(
              title: Text("End Portal Finder"),
            ),
          ),
          ListTile(
            title: Text("Circle Generator"),
          ),
        ],
      ),
    );
  }
}