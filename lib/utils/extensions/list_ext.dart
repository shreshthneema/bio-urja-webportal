import 'package:flutter/material.dart';

extension ExtendField on List<Widget> {
  List<Widget> extend(Iterable<Widget> newWidgets) {
    for (var widget in newWidgets) {
      add(widget);
    }
    return this;
  }
}
