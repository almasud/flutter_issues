import 'package:intl/intl.dart';

extension StringDateTime on String {
  String dateTimeFormat(String format) {
    return DateFormat(format).format(DateTime.parse(this)).toString();
  }
}
