import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  final String textButton1;
  final String textButton2;
  final Color colorButton1;
  final Color colorButton2;
  final double spacing;
  final double width;
  final double? height;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;

  const ButtonsRow({
    super.key, 
    this.textButton1 = 'Botón uno', 
    this.textButton2 = 'Botón dos', 
    this.colorButton1 = const Color.fromARGB(204, 173, 173, 178), 
    this.colorButton2 = const Color.fromARGB(255, 34, 184, 197), 
    this.spacing = 10, 
    this.width = 0.4, 
    this.height = 50, 
    required this.onPressed1, 
    required this.onPressed2,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: size.width * width,
          height: height,
          child: ElevatedButton(
            onPressed: onPressed1,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorButton1),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              textStyle: MaterialStateProperty.all(TextStyle(
                fontSize: size.height * 0.02,
                fontFamily: 'Sansita',
              )),
            ),
            child: Text(textButton1),
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: size.width * width,
          height: height,
          child: ElevatedButton(
            onPressed: onPressed2,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(colorButton2),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              textStyle: MaterialStateProperty.all(TextStyle(
                fontSize: size.height * 0.02,
                fontFamily: 'Sansita',
              )),
            ),
            child: Text(textButton2),
          ),
        )
      ],
    );
  }
}
