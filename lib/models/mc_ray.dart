import 'package:minecraft_calculator/models/coordinate.dart';
import 'dart:math';

class MCRay {
  Coordinate coordinate;
  double direction;

  MCRay(this.coordinate, this.direction);

  double get tangent => tan(-direction * pi / 180);
  double get x => coordinate.x;
  double get y => coordinate.y;
  double get z => coordinate.z;


  Coordinate interset(MCRay other) {
    double diffX = other.x - this.x;
    double diffTan = (other.tangent * other.z) - (this.tangent * this.z); 
    double z = (diffX - diffTan) / (this.tangent - other.tangent);
    double x = this.tangent * (z - this.z) + this.x;

    return Coordinate(x, this.y, z);
  }
}