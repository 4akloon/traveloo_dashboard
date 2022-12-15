part of 'validation_rule.dart';

class PhoneValidator implements ValidationRule {
  @override
  final String errorText;

  PhoneValidator({required this.errorText});

  @override
  RegExp get regex => RegExp(
      r"^[+](1\s?)?((\([0-9]{3}\))|[0-9]{3})[\s\-]?[\0-9]{3}[\s\-]?[0-9]{4}$");

  @override
  bool validate(String? value) {
    if (value == null) return false;
    return regex.hasMatch(value);
  }

  @override
  String? validateInput(String? value) {
    if (value != null && value.length == 15 && validate(value)) return null;
    return errorText;
  }
}
