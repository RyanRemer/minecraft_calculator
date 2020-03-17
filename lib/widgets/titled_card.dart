import 'package:flutter/material.dart';

class TitledCard extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Widget title;
  final Widget content;
  final Color backgroundColor;

  TitledCard({
    Key key,
    this.margin = const EdgeInsets.all(16.0),
    this.padding = const EdgeInsets.all(8.0),
    @required this.title,
    @required this.content, 
    this.backgroundColor = Colors.white70,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Card(
        color: backgroundColor,
        child: Padding(
          padding: padding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: title,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: content,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
