import 'package:flutter/material.dart';
import 'RCard.dart';
import 'IconContent.dart';
import 'styles.dart';
import 'RoundIconButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomButton extends StatelessWidget {

  final Color color;
  final Text text;
  final Function onPress;

  BottomButton({@required this.color, this.text, this.onPress}){}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: text,
        ),
        color: color,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 90.0,
        padding: EdgeInsets.only(bottom: 15.0),
      ),
    );
  }
}
