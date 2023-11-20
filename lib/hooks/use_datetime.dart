import 'package:intl/intl.dart';

class UseDatetime {
  String formatDatetime(DateTime datetime) {
    return DateFormat('yyyy/MM/dd').format(datetime);
  }
}