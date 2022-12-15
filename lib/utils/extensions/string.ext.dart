extension StringExt on String {
  String withSpacer() {
    String result = '';
    for (int i = 0; i < length; i++) {
      result += this[i];
      if ((i + 1) % 4 == 0) result += ' ';
    }
    return result;
  }
}
