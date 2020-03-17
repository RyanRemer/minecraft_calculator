class Coordinate {
  double x;
  double y;
  double z;

  Coordinate.empty();
  Coordinate(this.x, this.y, this.z);

  @override
  String toString() {
    // TODO: implement toString
    return "( ${x?.round()}, ${y?.round()}, ${z?.round()} )";
  }
}