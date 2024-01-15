import 'package:flutter/material.dart';

class TitleName extends StatelessWidget {
  final String welcomeText;
  final double fontSize;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;

  const TitleName({
    super.key, 
    this.welcomeText = 'Bienvenido', 
    this.fontSize = 22, 
    this.paddingLeft = 0, 
    this.paddingRight = 0, 
    this.paddingTop = 30, 
    this.paddingBottom = 30
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        paddingLeft, 
        paddingTop, 
        paddingRight, 
        paddingBottom
      ),
      child: Text(
        welcomeText,
        style: TextStyle(
            fontFamily: 'Sansita', 
            fontSize: fontSize, 
            fontWeight: FontWeight.bold
          ),
      ),
    );
  }
}
