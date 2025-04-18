import '../extensions/extensions.dart';

class CommonUtil {
  static bool isToday(DateTime? dt) {
    final DateTime now = DateTime.now();
    return now.toDate() == dt.toDate();
  }
}
