import 'package:flutter/material.dart';
import 'styles.dart';

class RepCard extends StatelessWidget {

   final Color color;
   final Widget child;
   final Function onPress;

  RepCard({@required this.color, this.child, this.onPress}){}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: this.color,
        ),
        child: this.child,
      ),
    );
  }
}
