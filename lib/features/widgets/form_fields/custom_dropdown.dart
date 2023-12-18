import 'dart:math';

import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> dropItems;
  final String? labelText;
  final Function(String?) onSaved;
  final String? defaultValue;
  final bool isEnable;
  final String? Function(String?)? validator;
  final Function(String?)? onChange;
  final double? width;

  const CustomDropDown({
    super.key,
    required this.dropItems,
    this.labelText,
    required this.onSaved,
    this.defaultValue,
    this.isEnable = true,
    this.validator,
    this.onChange,
    this.width,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? dropdownValue;
  double? width;

  @override
  void initState() {
    dropdownValue = widget.defaultValue;
    width = widget.width;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        width = width ?? constraint.maxWidth;
        return SizedBox(
          width: width,
          child: DropdownButtonFormField(
            value:
                widget.onChange == null ? dropdownValue : widget.defaultValue,
            // focusColor: Colors.grey.shade200,
            items: widget.isEnable
                ? widget.dropItems.map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: SizedBox(
                        width: (width != null
                                ? min(width!, constraint.maxWidth)
                                : constraint.maxWidth) -
                            40,
                        child: Text(
                          value,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    );
                  }).toList()
                : widget.defaultValue != null
                    ? [
                        DropdownMenuItem(
                          value: widget.defaultValue,
                          child: Text(
                            widget.defaultValue!,
                            style: Theme.of(context).textTheme.bodyMedium,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ]
                    : null,
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
              enabled: widget.isEnable,
              labelText: widget.labelText,
              filled: false,
            ),
            onSaved: widget.onSaved,
            validator: widget.validator,
            onChanged: widget.isEnable
                ? widget.onChange ??
                    (value) {
                      setState(() => dropdownValue = value.toString());
                    }
                : null,
          ),
        );
      },
    );
  }
}
