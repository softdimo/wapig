import 'package:flutter/material.dart';

class InputGeneric extends StatelessWidget {

  final double width;
  final double height;
  final double borderRadius;
  final Color borderColor;
  final Color colorIcon;
  final Color colorText;
  final IconData iconType;
  final String textHint;
  final double fontSizeText;

  const InputGeneric({
    super.key, 
    this.width = 0.8, 
    this.height = 0.06, 
    this.borderRadius = 30, 
    this.borderColor = const Color.fromARGB(204, 173, 173, 178), 
    this.colorIcon = const Color.fromARGB(204, 173, 173, 178), 
    this.colorText = const Color.fromARGB(204, 173, 173, 178), 
    this.iconType =  Icons.email, 
    required this.textHint,  
    required this.fontSizeText
  });

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * width,
      height: size.height * height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              iconType,
              color: colorIcon,
            ),
            hintText: textHint,
            hintStyle: TextStyle(color: colorText)),
        style: TextStyle(
          fontSize: fontSizeText,
        ),
      ),
    );
  }
}
