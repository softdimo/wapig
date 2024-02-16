import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTypeTextGeneric extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  //final FocusNode focusNode;
  final Color colorHintText;

  const InputTypeTextGeneric({
    super.key,
    this.hintText = 'Text:',
    this.colorHintText = const Color.fromARGB(204, 173, 173, 178),
    required this.textController,
    //required this.focusNode, 
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.70,
      height: size.height * 0.09,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(204, 173, 173, 178)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: size.width * 0.02),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z\s]+$')),
                ],
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: colorHintText),
                    hintText: hintText,
                    contentPadding: EdgeInsets.symmetric(vertical: size.height * 0.05)
                    ),
                controller: textController,
                style: const TextStyle(fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
