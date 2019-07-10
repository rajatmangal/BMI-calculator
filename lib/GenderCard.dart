import 'package:flutter/material.dart';
import 'Constants.dart';

class genderCard extends StatelessWidget {
  final IconData fontName;
  final String gender;

  genderCard({@required this.fontName, @required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          fontName,
          size: 100.0,
        ),
        SizedBox(
          height: 50.0,
        ),
        Text(
            gender,
            style: kDefaultTextStyle,
        )
      ],
    );
  }
}