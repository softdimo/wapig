import 'package:flutter/material.dart';

class SingleButton extends StatelessWidget {
  final String textButton;
  final Color colorButton;
  final double width;
  final double? height;
  final VoidCallback onPressed;

  const SingleButton(
      {super.key,
      this.textButton = 'Iniciar sesión',
      this.colorButton = const Color.fromARGB(255, 34, 184, 197),
      this.width = 0.7,
      this.height = 50,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colorButton),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          textStyle: MaterialStateProperty.all(TextStyle(
            fontSize: size.height * 0.02,
            fontFamily: 'Sansita',
          )),
        ),
        child: Text(textButton),
      ),
    );
  }
}
