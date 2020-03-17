import 'package:flutter/material.dart';

import 'package:minecraft_calculator/models/mc_ray.dart';

class MCRayForm extends StatelessWidget {
  final MCRay ray;
  final GlobalKey<FormState> formKey;

  const MCRayForm({
    Key key,
    this.formKey,
    this.ray,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          ListTile(
            title: TextFormField(
              keyboardType:
                  TextInputType.numberWithOptions(decimal: true, signed: true),
              decoration: InputDecoration(labelText: "X coordinate"),
              validator: this._fieldValidate,
              onSaved: (String value){
                ray.coordinate.x = double.tryParse(value);
              },
            ),
          ),
          ListTile(
            title: TextFormField(
              keyboardType:
                  TextInputType.numberWithOptions(decimal: true, signed: true),
              decoration: InputDecoration(labelText: "Z coordinate"),
              validator: this._fieldValidate,
              onSaved: (String value){
                ray.coordinate.z = double.tryParse(value);
              },
            ),
          ),
          ListTile(
            title: TextFormField(
              keyboardType:
                  TextInputType.numberWithOptions(decimal: true, signed: true),
              decoration: InputDecoration(labelText: "Direction"),
              validator: this._fieldValidate,
              onSaved: (String value){
                ray.direction = double.tryParse(value);
              },
            ),
          )
        ],
      ),
    );
  }

  String _fieldValidate(String value) {
    if (value.isEmpty) {
      return "Required";
    }
    if (double.tryParse(value) == null) {
      return "Not a valid number";
    }

    return null;
  }
}
