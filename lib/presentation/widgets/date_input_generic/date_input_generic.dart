import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateInputGeneric extends StatefulWidget {
  final ValueChanged<DateTime?> onDateSelected;

  const DateInputGeneric({
    super.key,
    required this.onDateSelected,
  });

  @override
  // ignore: library_private_types_in_public_api
  _DateInputGenericState createState() => _DateInputGenericState();
}

class _DateInputGenericState extends State<DateInputGeneric> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
          context: context,
          initialDate: _selectedDate ?? DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        )) ??
        DateTime.now();

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
        widget.onDateSelected(picked);
      });
    }
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
        padding: EdgeInsets.only(left: size.width * 0.02),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: _dateController,
                readOnly: true,
                onTap: () => _selectDate(context),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: 'Fecha:',
                  suffixIcon: Icon(Icons.calendar_month_rounded),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
