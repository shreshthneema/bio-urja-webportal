import 'package:flutter/material.dart';
import 'package:webportal_biourja_flutter/utils/index.dart';

class DateTimePicker extends StatefulWidget {
  final DateTime? defaultValue;
  final bool isEnable;
  final String labelText;
  final Function(DateTime?) onSaved;
  final String? Function(String?)? validator;

  const DateTimePicker({
    super.key,
    this.defaultValue,
    this.isEnable = true,
    this.labelText = 'Select Date',
    required this.onSaved,
    this.validator,
  });

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime? selectedDateTime;

  Future<void> _showDateTimePicker(BuildContext context) async {
    var firstDate = DateTime(1950);
    var lastDate = DateTime(2101);

    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateTime ?? DateTime.now(),
      firstDate: firstDate,
      lastDate: lastDate,
    );

    if (selectedDate == null) return;

    if (!context.mounted) return;

    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: selectedDateTime != null
          ? TimeOfDay.fromDateTime(selectedDateTime!)
          : TimeOfDay.fromDateTime(selectedDate),
    );

    setState(() {
      selectedDateTime = selectedTime == null
          ? selectedDate
          : DateTime(
              selectedDate.year,
              selectedDate.month,
              selectedDate.day,
              selectedTime.hour,
              selectedTime.minute,
            );
    });
  }

  @override
  void initState() {
    selectedDateTime = widget.defaultValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: TextFormField(
        readOnly: true,
        enabled: widget.isEnable,
        onTap: () => widget.isEnable ? _showDateTimePicker(context) : null,
        controller: TextEditingController(
          text: selectedDateTime != null
              ? selectedDateTime!.formatDateTime
              : "mm/dd/yyyy - hh:mm",
        ),
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.apply(backgroundColor: Colors.transparent)
            .copyWith(fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          enabled: widget.isEnable,
          // labelText: widget.isEnable ? widget.labelText : null,
          suffixIconConstraints: const BoxConstraints(minWidth: 24),
          suffixIcon: const Icon(
            Icons.edit_calendar_outlined,
            size: 20,
          ),
          filled: false,
        ),
        validator: widget.validator,
        onSaved: (newValue) => widget.onSaved(selectedDateTime),
      ),
    );
  }
}
