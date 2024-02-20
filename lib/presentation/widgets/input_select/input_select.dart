import 'package:flutter/material.dart';

class InputSelectGeneric extends StatefulWidget {
  final String hintText;
  final Function(String? value) onValueChanged;

  const InputSelectGeneric(
      {super.key, 
      required this.hintText, 
      required this.onValueChanged
      }
    );

  @override
  State<InputSelectGeneric> createState() => _InputSelectGenericState();
}

class _InputSelectGenericState extends State<InputSelectGeneric> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final hinText = widget.hintText;

    return SizedBox(
      width: size.width * 0.7,
      height: size.height * 0.05,
      child: Container(
          width: size.width * 0.1,
          height: size.height * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromARGB(204, 173, 173, 178)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: DropdownButton(
              dropdownColor: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              underline: const SizedBox(),
              value: selectedValue, // Usar la variable de estado
              hint: Text(
                hinText,
                style: const TextStyle(fontSize: 19, color: Colors.grey),
              ),
              icon: const Padding(
                padding: EdgeInsets.only(left: 80),
                child: Icon(Icons.arrow_drop_down),
              ),
              iconSize: 24,
              items: const [
                DropdownMenuItem(
                  value: null,
                  enabled: false,
                  child: Text('Seleccione una cuenta',
                      style: TextStyle(
                          color: Colors.grey)), // Deshabilitar la opción
                ),
                DropdownMenuItem(
                    value: 'bancolombia',
                    child: Text(
                      'Bancolombia',
                      style: TextStyle(fontSize: 19),
                    )),
                DropdownMenuItem(
                    value: 'billetera',
                    child: Text('Billetera', style: TextStyle(fontSize: 19)))
                // ... otras opciones
              ],
              onChanged: (value) {
                setState(() {
                  selectedValue = value; // Actualizar la variable de estado
                });
                widget.onValueChanged(value);
                // Manejar la selección del elemento aquí
                // ignore: avoid_print
                //print('Se seleccionó la cuenta: $value');
              },
            ),
          )),
    );
  }
}
