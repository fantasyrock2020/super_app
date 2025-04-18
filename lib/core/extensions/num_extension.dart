extension NumExtension on num? {
  DateTime? millisecondToDateTime() {
    if (this == null) return null;
    final DateTime dt =
        DateTime.fromMillisecondsSinceEpoch(this!.toInt() * 1000);
    return dt;
  }
}
