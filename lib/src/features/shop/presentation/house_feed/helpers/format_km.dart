extension DoubleExtensions on double? {
  String formatKm() {
    if (this == null) {
      return '-';
    } else {
      if (this! > 999) {
        return '∞';
      } else if (this! >= 100) {
        return this!.toInt().toString();
      } else {
        return this!.toString();
      }
    }
  }
}
