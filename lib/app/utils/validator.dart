import 'package:flutter/cupertino.dart';
import 'package:nb_utils/nb_utils.dart'; // Ensure you have the nb_utils package imported

/// A utility class for form validation.
class Validator {
  /// A global key for the form state.
  ///
  /// This key is used to access and manage the form's state.
  /// It should be assigned to the [Form] widget.
  static final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  /// Validates the given value based on the specified rules.
  ///
  /// [value] - The value to validate. This is the input provided by the user.
  /// [fieldName] - The name of the field for error messages. This helps in creating user-friendly error messages.
  /// [isRequired] - Whether the field is required or not. If true, the field must not be empty.
  /// [minLength] - Minimum length requirement for the field. If set, the value must be at least this many characters long.
  /// [isEmail] - Whether the value should be a valid email address. If true, the value is checked to ensure it is a proper email format.
  /// [hasNoSpaces] - Whether the value should not contain spaces. If true, the value should be free of any whitespace characters.
  ///
  /// Returns a validation error message or null if the value is valid.
  ///
  /// Usage Example:
  /// ```dart
  /// TextFormField(
  ///   decoration: InputDecoration(labelText: 'Email'),
  ///   validator: (value) {
  ///     return Validator.customValidator(
  ///       value: value,
  ///       fieldName: 'Email',
  ///       isEmail: true,
  ///       isRequired: true,
  ///     );
  ///   },
  /// ),
  /// ```
  static String? customValidator({
    required String? value,
    required String fieldName,
    bool isRequired = true,
    int minLength = 0,
    bool isEmail = false,
    bool hasNoSpaces = false,
  }) {

    // Check if the field is required and the value is empty.
    if (isRequired && (value == null || value.trim().isEmpty)) {
      return '$fieldName is required.';
    }

    // Check if the value meets the minimum length requirement.
    if (minLength > 0 && (value == null || value.length < minLength)) {
      return '$fieldName must be at least $minLength characters long.';
    }

    // Check if the value should be a valid email address.
    if (isEmail && (value == null || !value.validateEmail())) {
      return 'Please enter a valid email address for $fieldName.';
    }

    // Check if the value should not contain spaces.
    if (hasNoSpaces && (value != null && value.contains(' '))) {
      return '$fieldName should not contain spaces.';
    }

    // If none of the validation checks failed, return null indicating the value is valid.
    return null;
  }
}
