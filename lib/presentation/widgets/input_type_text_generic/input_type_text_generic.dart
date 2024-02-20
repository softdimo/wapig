import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTypeTextGeneric extends StatefulWidget {
  final TextEditingController textController;
  final String hintText;
  //final FocusNode focusNode;
  final Color colorHintText;
  final double fontSize;

  const InputTypeTextGeneric({
    super.key,
    this.hintText = 'Text:',
    this.fontSize = 19,
    this.colorHintText = const Color.fromARGB(204, 173, 173, 178),
    required this.textController, 
    //required this.focusNode,
  });

  @override
  _InputTypeTextGenericState createState() => _InputTypeTextGenericState();
}

class _InputTypeTextGenericState extends State<InputTypeTextGeneric> {
  int _characterCount = 0;
  //ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    widget.textController.addListener(() {
      setState(() {
        _characterCount = widget.textController.text.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.70,
      height: size.height * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(204, 173, 173, 178)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: size.width * 0.02, right: size.width * 0.01),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.text,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(100),
                  //FilteringTextInputFormatter.allow(RegExp(r'^[a-zA-Z\s]+$')),
                ],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: widget.colorHintText, fontSize: widget.fontSize),
                  hintText: widget.hintText,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: size.height * 0.01),
                  suffix: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 0.01),
                        child: Text(
                          "$_characterCount/100",
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(width: 5),
                    ],
                  ),
                ),
                controller: widget.textController,
                style: const TextStyle(fontSize: 19)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
