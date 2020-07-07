import 'package:bmicalculator/widgets/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String interpretation;
  final String resultText;

  ResultPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT PAGE'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your Results',
              style: ResultsTitleStyle,
            ),
          ),
          Expanded(
            flex: 8,
            child: ReUsableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  ),
                  Text(
                    bmiResult,
                    style: WeightTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              color: activeCardColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: ContainerTextStyle,
                ),
              ),
              height: 60,
              width: double.infinity,
              color: bottomContainerColor,
            ),
          )
        ],
      ),
    );
  }
}
