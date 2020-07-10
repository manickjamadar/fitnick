extension StringX on String {
  String capitalize() {
    final firstWord = this.substring(0, 1);
    return firstWord.toUpperCase() + this.substring(1).toLowerCase();
  }
}
