import 'package:flutter/material.dart';
import 'package:minecraft_calculator/models/coordinate.dart';
import 'package:minecraft_calculator/models/mc_ray.dart';
import 'package:minecraft_calculator/pages/end_portal_location.dart';
import 'package:minecraft_calculator/widgets/forms/mc_ray_form.dart';
import 'package:minecraft_calculator/widgets/titled_card.dart';

class EndPortalFinder extends StatefulWidget {
  final _rayFormA = new GlobalKey<FormState>();
  final _rayFormB = new GlobalKey<FormState>();

  EndPortalFinder({Key key}) : super(key: key);

  @override
  _EndPortalFinderState createState() => _EndPortalFinderState();
}

class _EndPortalFinderState extends State<EndPortalFinder> {
  MCRay rayA = new MCRay(Coordinate.empty(), null);
  MCRay rayB = new MCRay(Coordinate.empty(), null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("End Portal Finder"),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: <Widget>[
          TitledCard(
            title: Text(
              "Location A",
              style: Theme.of(context).textTheme.title,
            ),
            content: Column(
              children: <Widget>[
                MCRayForm(
                  ray: rayA,
                  formKey: widget._rayFormA,
                ),
              ],
            ),
          ),
          TitledCard(
            title: Text(
              "Location B",
              style: Theme.of(context).textTheme.title,
            ),
            content: Column(
              children: <Widget>[
                MCRayForm(
                  ray: rayB,
                  formKey: widget._rayFormB,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.adb),
          label: Text("Calculate"),
          onPressed: calculate),
    );
  }

  void calculate() {
    if (widget._rayFormA.currentState.validate() &&
        widget._rayFormB.currentState.validate()) {
      widget._rayFormA.currentState.save();
      widget._rayFormB.currentState.save();

      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EndPortalLocation(
              rayA: rayA,
              rayB: rayB,
            ),
          ));
    }
  }
}
