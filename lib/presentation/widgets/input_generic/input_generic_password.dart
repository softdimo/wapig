import 'package:flutter/material.dart';

class InputGenericPassword extends StatefulWidget {
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

  const InputGenericPassword({
    super.key,
    this.width = 0.8,
    this.height = 0.06,
    this.borderRadius = 30,
    this.borderColor = const Color.fromARGB(204, 173, 173, 178),
    this.colorIcon = const Color.fromARGB(204, 173, 173, 178),
    this.colorText = const Color.fromARGB(204, 173, 173, 178),
    this.iconType = Icons.email,
    required this.textHint,
    required this.fontSizeText,
    required this.textEditingController,
  });

  @override
  State<InputGenericPassword> createState() => _InputGenericState();
}

class _InputGenericState extends State<InputGenericPassword> {
  bool _obscureText = true;
  bool _keyboardIsVisible = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _keyboardIsVisible = _focusNode.hasFocus;
      });
    });
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is UserScrollNotification) {
          if (_keyboardIsVisible) {
            // Permitir el scroll
            return false; // No hace nada, permite el scroll normal
          } else {
            // Impedir el scroll
            return true; // Detiene el scroll
          }
        }
        return false; // Permitir el scroll por defecto
      },
      child: SingleChildScrollView(
        child: Container(
          width: size.width * widget.width,
          height: size.height * widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            border: Border.all(color: widget.borderColor),
          ),
          child: TextFormField(
            focusNode: _focusNode,
            obscureText: _keyboardIsVisible ? _obscureText : true,
            controller: widget.textEditingController,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                widget.iconType,
                color: widget.colorIcon,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off),
                onPressed: _toggleObscureText,
              ),
              hintText: widget.textHint,
              hintStyle: TextStyle(color: widget.colorText),
            ),
            style: TextStyle(
              fontSize: widget.fontSizeText,
            ),
          ),
        ),
      ),
    );
  }
}
