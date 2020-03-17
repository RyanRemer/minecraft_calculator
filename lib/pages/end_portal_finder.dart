import 'package:flutter/material.dart';

class EndPortalFinder extends StatefulWidget {
  EndPortalFinder({Key key}) : super(key: key);

  @override
  _EndPortalFinderState createState() => _EndPortalFinderState();
}

class _EndPortalFinderState extends State<EndPortalFinder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("End Portal Finder"),),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(

      )
    );
  }
}