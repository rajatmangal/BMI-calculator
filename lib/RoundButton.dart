import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final Function toDo;

  RoundButton({@required this.icon, this.toDo});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
      constraints: BoxConstraints.tightFor(
          width: 56,
          height: 56
      ),
      elevation: 6,
      onPressed: this.toDo,
      child: Icon(
          this.icon
      ),
    );
  }
}