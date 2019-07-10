import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/GenderCard.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/Constants.dart';
import 'RoundButton.dart';



enum Gender {
  male,female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = kActiveCardColor;
  Color femaleCardColor = kActiveCardColor;
  int height = 180;
  int weight = 74;
  int age = 19;

  void gender(Gender gender) {
    if(gender == Gender.male) {
      if(maleCardColor == kInactiveCardColor) {
        maleCardColor = kActiveCardColor;
        femaleCardColor = kInactiveCardColor;
      }
      else {
        maleCardColor = kInactiveCardColor;
        femaleCardColor = kActiveCardColor;
      }
    }
    else {
      if(femaleCardColor == kInactiveCardColor) {
        femaleCardColor = kActiveCardColor;
        maleCardColor = kInactiveCardColor;
      }
      else {
        femaleCardColor = kInactiveCardColor;
        maleCardColor = kActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex:1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender(Gender.male);
                      });
                    },
                    child: ReusableCard(
                        color: maleCardColor,
                        cardChild: new genderCard(fontName: FontAwesomeIcons.mars, gender:"Male"),
                    ),
                  ),

                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender(Gender.female);
                      });
                    },
                    child: ReusableCard(
                        color: femaleCardColor,
                        cardChild: genderCard(fontName: FontAwesomeIcons.venus, gender:"Female"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex:1,
            child: Row(
              children: <Widget>[
                ,
              ],
            ),
          ),
          Expanded(
            flex:1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: kInactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: kDefaultTextStyle,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              weight.toString(),
                              style:kHeightTextStyle
                            ),
                            Text(
                              "kg",
                              style:kDefaultTextStyle
                            )
                          ],
                        ),
                        SizedBox(
                          height:12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              toDo: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              toDo: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kInactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kDefaultTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kHeightTextStyle,
                        ),
                        SizedBox(
                          height:12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundButton(
                              icon: FontAwesomeIcons.plus,
                              toDo: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              toDo: () {
                                setState(() {
                                  age--;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomButtonColor,
            margin:EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}





