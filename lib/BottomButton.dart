import 'package:flutter/material.dart';
import 'Constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function tap;

  BottomButton({this.text, this.tap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.tap,
      child: Container(
        child: Center(
          child: Text(
              this.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22
              )
          ),
        ),
        color: kBottomButtonColor,
        margin:EdgeInsets.only(top:10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
