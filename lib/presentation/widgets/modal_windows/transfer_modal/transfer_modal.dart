import 'package:flutter/material.dart';
import 'package:wapig/presentation/widgets/input_select/input_select.dart';
import 'package:wapig/presentation/widgets/title_text/title_name.dart';

class ModalWindowTransfer extends StatefulWidget {
  const ModalWindowTransfer({super.key});

  @override
  State<ModalWindowTransfer> createState() => _ModalWindowTransferState();
}

class _ModalWindowTransferState extends State<ModalWindowTransfer> {
  String? selectedValue;
  String? selectedValue2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Dialog(
      //title: const Text('Transferencia entre cuentas'),
      child: SizedBox(
        width: size.width * 0.8,
        height: size.height * 0.7,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TitleName(
              fontSize: 17,
              isSansita: false,
              paddingTop: size.height * 0.01,
              welcomeText: 'TRANSFERENCIA ENTRE CUENTAS',
            ),
            const Column(
              children: [
                InputSelectGeneric(),
                SizedBox(height: 10,),
                InputSelectGeneric()
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
                  onPressed: () {},
                  child: const Text('Guardar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
