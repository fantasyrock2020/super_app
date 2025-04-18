extension DateTimeExtension on DateTime? {
  String toDate() {
    if (this == null) return '';
    final String day = this!.day.toString().padLeft(2, '0');
    final String month = this!.month.toString().padLeft(2, '0');
    return '$day/$month/${this!.year}';
  }

  String toWeekday() {
    if (this == null) return '';
    switch (this!.weekday) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return '';
    }
  }
}
