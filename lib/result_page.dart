import 'package:flutter/material.dart';
import 'styles.dart';
import 'RCard.dart';
import 'BottomButton.dart';
import 'CalculatorBrain.dart';

class ResultPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final CalculatorBrain calculatorBrain = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15.0),
              child: Text(
                "Your Result:",
                style: kTitleResult,
              ),
            ),
            Expanded(
              child: RepCard(
                color: kActiveCardColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'NORMAL',
                      style: kResultSubTitleTextStyle,
                    ),
                    Text(
                      calculatorBrain.CalculateBMI(),
                      style: kNumberBigTextStyle,
                    ),
                    Text(
                      'text text text texttext text text texttext text text texttext text text texttext text text texttext text text texttext text text texttext text text text',
                      style: kResultTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              color: kActiveColor,
              text: Text(
                'Re-Calculate',
                style: kButtonTextStyle,
              ),
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
