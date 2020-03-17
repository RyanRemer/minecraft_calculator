import 'package:flutter/material.dart';
import 'package:minecraft_calculator/pages/end_portal_finder.dart';

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
          ListTile(
            title: Text("End Portal Finder"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => EndPortalFinder())),
          ),
          ListTile(
            title: Text("Circle Generator"),
          ),
        ],
      ),
    );
  }
}
