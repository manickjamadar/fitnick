String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String twoDigitHours = twoDigits(duration.inHours) + " Hour";
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60)) + " Min";
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60)) + " Sec";
  if (duration.inMinutes == 0 && duration.inHours == 0) {
    return twoDigitSeconds;
  } else if (duration.inHours == 0) {
    return "$twoDigitMinutes $twoDigitSeconds";
  } else {
    return "$twoDigitHours $twoDigitMinutes $twoDigitSeconds";
  }
}
