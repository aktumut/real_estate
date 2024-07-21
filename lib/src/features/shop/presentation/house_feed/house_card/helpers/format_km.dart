String formatKm(double? number) {
  if (number == null) {
    return '-';
  } else if (number >= 100) {
    return number.toInt().toString();
  } else if (number > 999) {
    return '∞';
  } else {
    return number.toString();
  }
}
