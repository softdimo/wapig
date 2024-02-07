import 'package:flutter/material.dart';

class InputSelectGeneric extends StatefulWidget {
  const InputSelectGeneric({super.key});

  @override
  State<InputSelectGeneric> createState() => _InputSelectGenericState();
}

class _InputSelectGenericState extends State<InputSelectGeneric> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
              underline: const SizedBox(),
              value: selectedValue, // Usar la variable de estado
              hint: const Text(
                'Desde:',
                style: TextStyle(fontSize: 19, color: Colors.grey),
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
                DropdownMenuItem(value: 'cuenta1', child: Text('Bancolombia')),
                DropdownMenuItem(value: 'cuenta2', child: Text('Billetera')),
                // ... otras opciones
              ],
              onChanged: (value) {
                setState(() {
                  selectedValue = value; // Actualizar la variable de estado
                });

                // Manejar la selección del elemento aquí
                print('Se seleccionó la cuenta: $value');
              },
            ),
          )),
    );
  }
}
