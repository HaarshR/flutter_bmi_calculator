import 'package:flutter/material.dart';

const iconSize = 80.0;
const gapSize = 15.0;
const fontSize = 18.0;
const textColor = Color(0xFF8D8E98);

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: iconSize,
        ),
        SizedBox(
          height: gapSize,
        ),
        Text(
          this.label,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
          ),
        )
      ],
    );
  }
}
