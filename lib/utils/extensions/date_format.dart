import 'package:intl/intl.dart';

extension FormatDate on DateTime {
  String get formatDate => DateFormat('MM/dd/yyyy').format(this);
  String get formatDateTime => DateFormat('MM/dd/yyyy h:mm a').format(this);
}
