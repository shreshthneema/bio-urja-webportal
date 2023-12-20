import 'package:flutter/material.dart';
import '../../../utils/index.dart';

class CustomDatePicker extends StatefulWidget {
  final DateTime? defaultValue;
  final DateTime? value;
  final bool isEnable;
  final String labelText;
  final Function(DateTime?) onSaved;
  final String? Function(String?)? validator;
  final Function(DateTime?)? onChange;

  const CustomDatePicker({
    super.key,
    this.defaultValue,
    this.isEnable = true,
    this.labelText = 'Select Date',
    required this.onSaved,
    this.validator,
    this.onChange,
    this.value,
  });

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2101),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            textTheme: const TextTheme(
              bodyMedium: TextStyle(
                fontSize: 8,
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        widget.onChange != null ? widget.onChange!(picked) : null;
        selectedDate = picked;
      });
    }
  }

  @override
  void initState() {
    selectedDate = widget.defaultValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.value != null) {
      selectedDate = widget.value;
    }
    return SizedBox(
      width: 110,
      child: TextFormField(
        readOnly: true,
        enabled: widget.isEnable,
        onTap: () => widget.isEnable ? _selectDate(context) : null,
        controller: TextEditingController(
          text: selectedDate != null ? selectedDate!.formatDate : 'mm/dd/yyyy',
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
        onSaved: (newValue) => widget.onSaved(selectedDate),
        onChanged: widget.onChange != null
            ? (value) => widget.onChange!(selectedDate)
            : null,
      ),
    );
  }
}
