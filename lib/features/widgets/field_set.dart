import 'dart:math';

import 'package:flutter/material.dart';
import '../../utils/index.dart';

import 'form_section.dart';

class FieldSetModel {
  final Widget title;
  final Widget field;

  FieldSetModel({required this.title, required this.field});
}

class FieldSet extends StatelessWidget {
  final String title;
  final List<FieldSetModel> fields;

  const FieldSet({super.key, required this.title, required this.fields});

  @override
  Widget build(BuildContext context) {
    double width = context.isMobileScreen || context.isTabletScreen
        ? context.screenWidth
        : context.screenWidth * 0.5;

    const double leftPadding = 20;

    width = width - leftPadding;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: leftPadding * 0.5),
      padding: const EdgeInsets.only(bottom: 10),
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.colorScheme.secondary,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: leftPadding * 0.5,
              vertical: 5,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: context.textTheme.titleMedium
                  ?.apply(color: context.colorScheme.secondary),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ].extend(
          fields.map(
            (field) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: FormSection(
                defaultWidth: min(width - 30, 500),
                title: field.title,
                field: field.field,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
