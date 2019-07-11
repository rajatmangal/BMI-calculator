import 'package:flutter/material.dart';
import 'Constants.dart';
import 'BottomButton.dart';

class Second extends StatelessWidget {
  final String BMI;
  final String result;
  final String description;

  Second({@required this.BMI,@required this.result,@required this.description});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: Text(
              "Your Result",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: kActiveCardColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    this.result,
                    style: kResultText,
                  ),
                  Text(
                    this.BMI,
                    style: kBMI,
                  ),
                  Text(
                    "Normal BMI range:",
                    style: kBMIText,
                  ),
                  Text(
                    "18,5 - 25 kg/m2",
                    style: kSecondPageFont,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    this.description,
                    textAlign: TextAlign.center,
                    style: kSecondPageFont
                  ),
                ],
              ),
            ),
          ),
          new BottomButton(
            text: "RE-CALCULATE YOUR BMI",
            tap: () {
              Navigator.pop(context);
            }
          ),
        ],
      ),
    );
  }
}

