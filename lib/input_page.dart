import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/GenderCard.dart';
import 'package:bmi_calculator/ReusableCard.dart';

const bottomContainerHeight = 80.0;
const inactiveCardColor = Color(0XFF1D1E33);
const activeCardColor = Color(0XFF111328);
const bottomButtonColor = Color(0XFFEA1556);

enum Gender {
  male,female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = activeCardColor;
  Color femaleCardColor = activeCardColor;


  void gender(Gender gender) {
    if(gender == Gender.male) {
      if(maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }
      else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = activeCardColor;
      }
    }
    else {
      if(femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }
      else {
        femaleCardColor = inactiveCardColor;
        maleCardColor = activeCardColor;
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
                Expanded(
                  child: ReusableCard(color: inactiveCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            flex:1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: inactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(color: inactiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomButtonColor,
            margin:EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}



