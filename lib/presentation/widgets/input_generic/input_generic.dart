import 'package:flutter/material.dart';

class InputGeneric extends StatefulWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color borderColor;
  final Color colorIcon;
  final Color colorText;
  final IconData iconType;
  final String textHint;
  final double fontSizeText;
  final TextEditingController textEditingController;

  const InputGeneric(
      {super.key,
      this.width = 0.8,
      this.height = 0.06,
      this.borderRadius = 30,
      this.borderColor = const Color.fromARGB(204, 173, 173, 178),
      this.colorIcon = const Color.fromARGB(204, 173, 173, 178),
      this.colorText = const Color.fromARGB(204, 173, 173, 178),
      this.iconType = Icons.email,
      required this.textHint,
      required this.fontSizeText,
      required this.textEditingController});

  @override
  State<InputGeneric> createState() => _InputGenericState();
}

class _InputGenericState extends State<InputGeneric> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * widget.width,
      height: size.height * widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(color: widget.borderColor),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            widget.iconType,
            color: widget.colorIcon,
          ),
          hintText: widget.textHint,
          hintStyle: TextStyle(color: widget.colorText)
        ),
        controller: widget.textEditingController,
        style: TextStyle(
          fontSize: widget.fontSizeText,
        ),
      ),
    );
  }
}
