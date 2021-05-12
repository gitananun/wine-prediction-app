mixin TypeMixin {
  static bool isNumeric(String? n) {
    if (n == null) return false;
    return double.tryParse(n) != null;
  }
}
