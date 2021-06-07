import 'package:flutter/material.dart';

class ReuseWidget extends StatelessWidget {

  ReuseWidget({@required this.colour,this.childWidget,this.onPress});

  final Color colour;
  final childWidget;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          child: childWidget,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: colour,
          )
      ),
    );
  }
}