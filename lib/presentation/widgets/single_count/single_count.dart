import 'package:flutter/material.dart';

class SingleCount extends StatelessWidget {
  final String accountName;
  final double fontSize;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final VoidCallback? onPressed;
  final FontWeight typeText;
  final bool isSansita;
  final Color colorText;
  // final bool isUnderLined;
  final Color colorIcon;
  final IconData? iconType1;
  final IconData? iconType2;
  final IconData? iconType3;
  final IconData? iconType4;

  const SingleCount({
    super.key,
    this.accountName = '',
    this.fontSize = 22,
    this.paddingLeft = 0,
    this.paddingRight = 0,
    this.paddingTop = 30,
    this.paddingBottom = 30,
    this.onPressed,
    this.typeText = FontWeight.bold,
    this.isSansita = true,
    this.colorText = Colors.black,
    // this.isUnderLined = false,
    this.colorIcon = const Color.fromARGB(204, 173, 173, 178),
    this.iconType1,
    this.iconType2,
    this.iconType3,
    this.iconType4,
    // required IconData? iconType,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.fromLTRB(
            paddingLeft, paddingTop, paddingRight, paddingBottom),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(iconType1),
            Icon(iconType2),
            Icon(iconType3),
            Icon(iconType4),
            Text(
              accountName,
              style: TextStyle(
                  color: colorText,
                  fontFamily: isSansita ? 'Sansita' : '',
                  fontSize: fontSize,
                  fontWeight: typeText,
                  
                  /* decoration: isUnderLined
                      ? TextDecoration.underline
                      : TextDecoration.none */
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
