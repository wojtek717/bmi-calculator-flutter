import 'package:flutter/material.dart';

class RepCard extends StatelessWidget {

   final Color color;
   final Widget child;

  RepCard({@required this.color, this.child}){}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: this.color,
      ),
      child: this.child,
    );
  }
}
