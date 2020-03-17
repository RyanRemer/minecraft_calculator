import 'package:flutter/material.dart';
import 'package:minecraft_calculator/models/coordinate.dart';
import 'package:minecraft_calculator/models/mc_ray.dart';
import 'package:minecraft_calculator/widgets/titled_card.dart';

class EndPortalLocation extends StatefulWidget {
  final MCRay rayA;
  final MCRay rayB;

  EndPortalLocation({Key key, @required this.rayA, @required this.rayB}) : super(key: key);

  @override
  _EndPortalLocationState createState() => _EndPortalLocationState(this.rayA, this.rayB);
}

class _EndPortalLocationState extends State<EndPortalLocation> {
  MCRay rayA;
  MCRay rayB;
  Coordinate endPortalLocation;

  _EndPortalLocationState(this.rayA, this.rayB){
    endPortalLocation = rayA.interset(rayB);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("End Portal Location"),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: <Widget>[
          TitledCard(
            title: Text("End Portal Location", style: Theme.of(context).textTheme.title,),
            content: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Predicted Location"),
                  trailing: Text("( ${rayA.x.round()}, ${rayB.z.round()} )"),
                ),
                ListTile(
                  title: Text("X Range"),
                  trailing: Text("( ${rayA.x.round()}, ${rayB.z.round()} )"),
                ),
                ListTile(
                  title: Text("Z Range"),
                  trailing: Text("( ${rayA.x.round()}, ${rayB.z.round()} )"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Slider.adaptive(
                    
                    value: 0.0, onChanged: (double value){

                  }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}