import 'package:flutter/material.dart';

class RepCard extends StatelessWidget {

  Color _color;

  RepCard({Color color}){
    this._color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: _color,
      ),
    );
  }
}
