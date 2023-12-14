import 'package:intl/intl.dart';

extension FormatDate on DateTime {
  String get format => DateFormat('dd-MM-yyyy').format(this);
}
