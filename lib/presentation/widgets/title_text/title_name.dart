import 'package:flutter/material.dart';

class TitleName extends StatelessWidget {
  final String welcomeText;
  final double fontSize;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final VoidCallback? onPressed;
  final bool isUnderLined;
  final FontWeight typeText;
  final bool isSansita;
  final Color colorText;

  const TitleName(
      {super.key,
      this.welcomeText = 'Bienvenido',
      this.fontSize = 22,
      this.paddingLeft = 0,
      this.paddingRight = 0,
      this.paddingTop = 30,
      this.paddingBottom = 30,
      this.onPressed,
      this.typeText = FontWeight.bold,
      this.isSansita = true,
      this.isUnderLined = false,
      this.colorText = Colors.black});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.fromLTRB(
            paddingLeft, paddingTop, paddingRight, paddingBottom),
        child: Text(
          welcomeText,
          style: TextStyle(
              color: colorText,
              fontFamily: isSansita ? 'Sansita' : '',
              fontSize: fontSize,
              fontWeight: typeText,
              decoration: isUnderLined
                  ? TextDecoration.underline
                  : TextDecoration.none),
        ),
      ),
    );
  }
}
