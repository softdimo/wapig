import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTypeNumber extends StatelessWidget {
  final FocusNode focusNode;
  final TextEditingController textController;

  const InputTypeNumber({
    super.key,
    required this.textController,
    required this.focusNode,
  });

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
        padding: EdgeInsets.only(left: size.width * 0.02),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                /* onTapOutside: (event) {
                  focusNode.unfocus();
                }, */
                //focusNode: focusNode,
                controller: textController,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^[0-9]+$')),
                ],
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Valor:',
                    contentPadding: EdgeInsets.symmetric(vertical: 10)),
                style: const TextStyle(fontSize: 19),

                /* validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo es requerido';
                  }
                  return null;
                }, */
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.02),
              child: const Icon(Icons.attach_money_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
