import 'package:flutter/material.dart';
import 'styles.dart';


const iconSize = 80.0;
const sizedBoxHeight = 15.0;

class IconContent extends StatelessWidget {

  final IconData icon;
  final String label;

  IconContent({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          this.label,
          style: kIconTextStyle
        )
      ],
    );
  }
}
