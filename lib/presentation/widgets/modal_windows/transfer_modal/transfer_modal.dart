import 'package:flutter/material.dart';
import 'package:wapig/presentation/widgets/date_input_generic/date_input_generic.dart';
import 'package:wapig/presentation/widgets/input_select/input_select.dart';
import 'package:wapig/presentation/widgets/input_type_number/input_type_number.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';

class ModalWindowTransfer extends StatefulWidget {
  const ModalWindowTransfer({super.key});

  @override
  State<ModalWindowTransfer> createState() => _ModalWindowTransferState();
}

class _ModalWindowTransferState extends State<ModalWindowTransfer> {
  String? selectedValue;
  String? selectedValue2;
  final textController = TextEditingController();
  final focusNode = FocusNode();
  DateTime? selectedDate;

  void onValue(String value) {
    //print('Valor capturado: $value');
    // Replace with your desired actions (e.g., validation, storage, calculations)
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String textValue = '';
    return Dialog(
      backgroundColor: Colors.white,
      child: SizedBox(
        width: size.width * 0.8,
        height: size.height * 0.7,
        child: Column(
          children: <Widget>[
            TitleName(
              fontSize: 17,
              isSansita: false,
              paddingTop: size.height * 0.01,
              welcomeText: 'TRANSFERENCIA ENTRE CUENTAS',
            ),
            Column(
              children: [
                const InputSelectGeneric(hintText: 'Desde:'),
                const SizedBox(height: 10),
                const InputSelectGeneric(hintText: 'A:'),
                const SizedBox(height: 10),
                InputTypeNumber(
                    textController: textController, focusNode: focusNode),
                const SizedBox(
                  height: 20,
                ),
                DateInputGeneric(
                  onDateSelected: (DateTime? date) {
                    selectedDate = date;
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'),
                ),
                const SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      textValue = textController.text;
                    });
                    print('Valor ingresado: $textValue');
                    print('Fecha seleccionada $selectedDate');
                    onValue(
                        textValue); // Llamar a onValue directamente aquí si es necesario
                    textController.clear();
                    focusNode.requestFocus();
                  },
                  child: const Text('Guardar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onFieldSubmitted(value) {
    print('Valor en onFieldSubmitted: $value');
    onValue(value);
    textController.clear();
    focusNode.requestFocus();
  }
}
