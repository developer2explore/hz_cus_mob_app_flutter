class RegexFormat {
  static const String emailRegex = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
  static const String phoneNumberRegex = r'^[0-9]{10}$';
  static const String nameRegex = r'^[a-zA-Z\s\-]+$';
  static const String passwordRegex =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
}
