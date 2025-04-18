extension DoubleExtension on double? {
  String kelvinToCelsius() {
    if (this == null) return '0°';
    return (this! - 272.15).toStringAsFixed(0);
  }
}
