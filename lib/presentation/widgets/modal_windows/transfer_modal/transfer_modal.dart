import 'package:wapig/imports/barrel.dart';

class ModalWindowTransfer extends StatefulWidget {
  const ModalWindowTransfer({super.key});

  @override
  State<ModalWindowTransfer> createState() => _ModalWindowTransferState();
}

class _ModalWindowTransferState extends State<ModalWindowTransfer> {
  final _textController = TextEditingController();
  final String photoRoute =
      '/assets/uploaded_images'; //Ruta de donde se cargarán las fotos

  // ignore: unused_field
  final _dateController = TextEditingController();
  final _textNoteController = TextEditingController();
  final focusNode = FocusNode();
  DateTime? selectedDate;
  final _formKey = GlobalKey<FormState>();
  final String msgError = '';
  //bool isChecked = true;
  String selectedValueFrom = '';
  String selectedValueTo = '';
  bool allFieldsOk = false;

  void onValue(String value) {}

  void _handleSelectedValue(String? value, String dropdownLabel) {
    if (value != null) {
      if (dropdownLabel == 'Desde:') {
        setState(() {
          selectedValueFrom = value;
        });
        print('Valor seleccionado en cuenta origen: $selectedValueFrom');
      } else if (dropdownLabel == 'A:') {
        setState(() {
          selectedValueTo = value;
        });
        print('Valor seleccionado en cuenta destino: $selectedValueTo');
      }
    }
  }

  Future<void> tomarFoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      final File foto = File(image.path);
      await foto.copy(photoRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    //String textValueNumber = '';
    //String textValueNote = '';
    return Dialog(
      backgroundColor: Colors.white,
      child: SizedBox(
        width: size.width * 0.8,
        height: size.height * 0.6,
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
                  InputSelectGeneric(
                    hintText: 'Desde:',
                    onValueChanged: (value) {
                      _handleSelectedValue(value, 'Desde:');
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  InputSelectGeneric(
                    hintText: 'A:',
                    onValueChanged: (value) {
                      _handleSelectedValue(value, 'A:');
                    },
                  ),
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
              SizedBox(
                height: size.height * 0.005,
              ),
              SizedBox(
                child: allFieldsOk
                    ? const Text(
                        'Todos los campos deben diligenciarse',
                        style: TextStyle(color: Colors.red),
                      )
                    : Container(),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              IconButton.outlined(
                  onPressed: () {
                    tomarFoto();
                  }, 
                  icon: const Icon(Icons.camera_alt)),

              ButtonsRow(
                onPressed1: () => Navigator.pop(context),
                onPressed2: () => _formKey.currentState!.validate() &&
                        _textController.text.isNotEmpty &&
                        _textNoteController.text.isNotEmpty &&
                        selectedDate != null &&
                        selectedValueFrom.isNotEmpty &&
                        selectedValueTo.isNotEmpty
                    ? // Si todos los campos están llenos, realizar acciones
                    {
                        print('Valor ingresado: ${_textController.text}'),
                        print('Fecha seleccionada: $selectedDate'),
                        print('Texto ingresado: ${_textNoteController.text}'),
                        print('Cuenta origen: $selectedValueFrom'),
                        print('Cuenta destino: $selectedValueTo'),
                        Navigator.pop(context)
                        // Realizar otras acciones aquí, como enviar datos o navegar a otra pantalla
                      }
                    : setState(() {
                        allFieldsOk = true;
                      }),
                /* showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Error'),
                            content: const Text(
                                'Debes completar todos los campos para guardar.'),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Aceptar'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        }), */

                /* () {
                  ///if (_formKey.currentState!.validate()) {
                  if (_textController.text.isNotEmpty &&
                      _textNoteController.text.isNotEmpty &&
                      selectedDate != null &&
                      selectedValueFrom.isNotEmpty &&
                      selectedValueTo.isNotEmpty) {
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
                }, */
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

  /* void onFieldSubmitted(value) {
    print('Valor en onFieldSubmitted: $value');
    onValue(value);
    _textController.clear();
    focusNode.requestFocus();
  } */
}
