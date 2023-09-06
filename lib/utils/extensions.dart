import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

extension StringDateTime on String {
  String dateTimeFormat(String format) {
    try {
      return DateFormat(format).format(DateTime.parse(this)).toString();
    } catch (e) {
      debugPrint("dateTimeFormat: exception: ${e.toString()}");
      return "Invalid";
    }
  }
}
