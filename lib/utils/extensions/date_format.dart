import 'package:intl/intl.dart';

extension FormatDate on DateTime {
  String get formatDate => DateFormat('dd/MM/yyyy').format(this);
  String get formatDateTime => DateFormat('dd/MM/yyyy h:mm a').format(this);
}
