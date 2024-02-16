import 'package:flutter/material.dart';
import 'package:wapig/presentation/widgets/buttons/buttons.dart';
import 'package:wapig/presentation/widgets/date_input_generic/date_input_generic.dart';
import 'package:wapig/presentation/widgets/input_select/input_select.dart';
import 'package:wapig/presentation/widgets/input_type_number/input_type_number.dart';
import 'package:wapig/presentation/widgets/input_type_text_generic/input_type_text_generic.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';

class ModalWindowTransfer extends StatefulWidget {
  const ModalWindowTransfer({super.key});

  @override
  State<ModalWindowTransfer> createState() => _ModalWindowTransferState();
}

class _ModalWindowTransferState extends State<ModalWindowTransfer> {
  final _textController = TextEditingController();
  // ignore: unused_field
  final _dateController = TextEditingController();
  final _textNoteController = TextEditingController();
  final focusNode = FocusNode();
  DateTime? selectedDate;
  final _formKey = GlobalKey<FormState>();
  final String msgError = '';
  bool isChecked = true;

  void onValue(String value) {}

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String textValueNumber = '';
    String textValueNote = '';
    return Dialog(
      backgroundColor: Colors.white,
      child: SizedBox(
        width: size.width * 0.8,
        height: size.height * 0.5,
        child: Form(
          key: _formKey,
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
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const InputSelectGeneric(hintText: 'A:'),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  InputTypeNumber(
                    textController: _textController,
                    focusNode: focusNode,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  DateInputGeneric(
                    onDateSelected: (DateTime? date) {
                      selectedDate = date;
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  InputTypeTextGeneric(
                      textController: _textNoteController,
                      hintText: 'Agregar nota:'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonsRow(
                onPressed1: () => Navigator.pop(context),
                onPressed2: () {
                  ///if (_formKey.currentState!.validate()) {
                  if (_textController.text.isNotEmpty &&
                      _textNoteController.text.isNotEmpty &&
                      selectedDate != null) {
                    // La validación del formulario es exitosa
                    setState(() {
                      textValueNumber = _textController.text;
                      textValueNote = _textNoteController.text;
                      selectedDate;
                    });
                    print('Valor ingresado: $textValueNumber');
                    print('Fecha seleccionada: $selectedDate');
                    print('Texto ingresado: $textValueNote');
                    _textController.clear();
                    focusNode.requestFocus();
                    Navigator.pop(context);
                  }
                },
                textButton1: 'Cancelar',
                textButton2: 'Guardar',
                colorButton1: const Color.fromARGB(204, 173, 173, 178),
                colorButton2: const Color.fromARGB(255, 34, 184, 197),
                spacing: 10,
                width: 0.3,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onFieldSubmitted(value) {
    print('Valor en onFieldSubmitted: $value');
    onValue(value);
    _textController.clear();
    focusNode.requestFocus();
  }
}
