import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTypeNumber extends StatelessWidget {
  const InputTypeNumber({
    super.key,
    required this.size,
    //required this.onValue,
    required this.textController,
    required this.focusNode,
  });

  final Size size;
  //final ValueChanged<String> onValue;
  final TextEditingController textController;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.70,
      height: size.height * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(204, 173, 173, 178)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^[0-9]+$')),
                ],
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Valor:',
                    contentPadding: EdgeInsets.symmetric(vertical: 10)),
                onFieldSubmitted: (value) {
                  //onValue(value);
                  textController.clear();
                  focusNode.requestFocus();
                },
                style: const TextStyle(fontSize: 19),
              ),
            ),
            //const SizedBox(width: 10,),
            const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.attach_money_rounded),
            ),
          ],
        ),
      ),
    );
  }
}