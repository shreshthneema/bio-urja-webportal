import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../utils/index.dart';

class NormalTextField extends StatelessWidget {
  final FormFieldValidator<String>? validate;
  final Function(String?) onSaved;
  final bool autoFocus;
  final String? labelText;
  final TextInputType keyboardType;
  final int maxLines;
  final double verticalPadding;
  final bool isEnable;
  final String? defaultValue;
  final IconData? suffixIcon;
  final TextAlign? textAlign;

  const NormalTextField(
      {super.key,
      this.defaultValue,
      this.autoFocus = false,
      this.labelText,
      this.keyboardType = TextInputType.text,
      this.validate,
      required this.onSaved,
      this.maxLines = 1,
      this.verticalPadding = 5,
      this.isEnable = true,
      this.suffixIcon,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter>? filters() {
      if (keyboardType == TextInputType.number) {
        return [FilteringTextInputFormatter.digitsOnly];
      }
      if (keyboardType == TextInputType.phone) {
        return [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(11),
        ];
      }

      return [];
    }

    return TextFormField(
      autofocus: autoFocus,
      initialValue: defaultValue,
      textAlign: textAlign ?? TextAlign.left,
      style:
          context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        enabled: isEnable,
        labelText: labelText,
      ),
      inputFormatters: filters(),
      keyboardType: keyboardType,
      validator: validate,
      onSaved: isEnable ? onSaved : null,
      maxLines: maxLines,
      textCapitalization: TextCapitalization.sentences,
    );
  }
}
