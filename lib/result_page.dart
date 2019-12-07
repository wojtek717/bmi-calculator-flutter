import 'package:flutter/material.dart';
import 'styles.dart';
import 'RCard.dart';
import 'BottomButton.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                "Your Resoult:",
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
                      style: kResultTextStyle,
                    ),
                    Text(
                      '20.0',
                      style: kNumberBigTextStyle,
                    ),
                    Text('text text text text'),
                  ],
                ),
              ),
            ),
            BottomButton(
              color: kActiveColor,
              text: Text(
                'Calculate',
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
