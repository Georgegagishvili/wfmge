import 'package:flutter/cupertino.dart';

mixin Validator {
  static final RegExp _emojiRegex = RegExp(
    r'[\u{1F300}-\u{1FAFF}\u{1F000}-\u{1F9FF}\u{2600}-\u{27BF}]',
    unicode: true,
  );

  bool _containsEmoji(String value) => _emojiRegex.hasMatch(value);

  String? validateEmail(BuildContext context, String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    final bool isEmail = RegExp(
      r'^(?!.*\.\.)[A-Za-z0-9](?:[A-Za-z0-9._%+-]{0,62}[A-Za-z0-9])?@[A-Za-z0-9-]+(?:\.[A-Za-z0-9-]+)*\.[A-Za-z]{2,}$',
    ).hasMatch(value);

    if (!isEmail) {
      return 'Invalid email';
    }

    return null;
  }

  String? validatePassword(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }

    int conditionsMet = 0;

    // Check for lowercase letter
    if (RegExp(r'[a-z]').hasMatch(value)) {
      conditionsMet++;
    }

    // Check for uppercase letter
    if (RegExp(r'[A-Z]').hasMatch(value)) {
      conditionsMet++;
    }

    // Check for digit
    if (RegExp(r'\d').hasMatch(value)) {
      conditionsMet++;
    }

    // Check for special character
    if (RegExp(r'[@$!%?&]').hasMatch(value)) {
      conditionsMet++;
    }

    if (conditionsMet < 2) {
      return 'Password conditions are not met.';
    }

    return null;
  }

  String? validateConfirmPassword(
    BuildContext context,
    String? value,
    String password,
  ) {
    if (value == null || value.isEmpty) {
      return 'Confirm password is required';
    } else if (value != password) {
      return 'Confirm password does not match';
    }
    return null;
  }

  String? validateEmptyField(BuildContext context, String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }

    if (_containsEmoji(value)) {
      return 'Emojis are not allowed';
    }

    return null;
  }
}
