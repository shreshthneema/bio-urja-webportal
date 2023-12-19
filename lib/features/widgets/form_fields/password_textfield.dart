import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String labelText;
  final FormFieldValidator<String>? validate;
  final Function(String?) onSaved;
  final String? initialValue;
  final bool autoFocus;
  final String? hintText;

  const PasswordTextField({
    super.key,
    required this.labelText,
    this.validate,
    required this.onSaved,
    this.initialValue,
    this.autoFocus = false,
    this.hintText,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  late bool _passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validate,
      obscureText: !_passwordVisible,
      textAlign: TextAlign.left,
      initialValue: widget.initialValue,
      autofocus: widget.autoFocus,
      // style: Theme.of(context).textTheme.labelMedium,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon: IconButton(
          icon:
              Icon(_passwordVisible ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
      keyboardType: TextInputType.text,
      onSaved: widget.onSaved,
      autofillHints: null,
    );
  }
}

class PasswordTextFieldCon extends StatefulWidget {
  final String labelText;
  final FormFieldValidator<String>? validate;
  final TextEditingController controller;
  final String? initialValue;
  final bool autoFocus;

  const PasswordTextFieldCon(
      {super.key,
      required this.labelText,
      this.validate,
      this.initialValue,
      this.autoFocus = false,
      required this.controller});

  @override
  State<PasswordTextFieldCon> createState() => _PasswordTextFieldConState();
}

class _PasswordTextFieldConState extends State<PasswordTextFieldCon> {
  late bool _passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validate,
      obscureText: !_passwordVisible,
      textAlign: TextAlign.left,
      initialValue: widget.initialValue,
      autofocus: widget.autoFocus,
      // style: Theme.of(context).textTheme.labelMedium,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        labelText: widget.labelText,
        hintText: 'Password must be longer than 8 characters',
        suffixIcon: IconButton(
          icon:
              Icon(_passwordVisible ? Icons.visibility_off : Icons.visibility),
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
      keyboardType: TextInputType.text,
      autofillHints: null,
      controller: widget.controller,
    );
  }
}
