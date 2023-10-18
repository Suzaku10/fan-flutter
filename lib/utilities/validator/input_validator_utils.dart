import 'package:fan_flutter/utilities/i10n/l10n.dart';
import 'package:fan_flutter/utilities/utils.dart';

class InputValidatorUtils {
  InputValidatorUtils._();

  static String? name(String? value) {
    if (value == null || value.isEmpty) {
      return I10n.current.validator_name_empty;
    } else if (value.length < 3 || value.length > 51) {
      return I10n.current.validator_name_limit;
    } else {
      return null;
    }
  }

  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return I10n.current.validator_email_empty;
    } else if (Utils.isValidEmail(value ?? '')) {
      return null;
    } else {
      return I10n.current.validator_email_invalid;
    }
  }

  static String? password(String? value) {
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    if (value == null || value.isEmpty) {
      return I10n.current.validator_password_empty;
    } else if (value.length < 8) {
      return I10n.current.validator_password_limit;
    } else if (!regex.hasMatch(value)) {
      return I10n.current.validator_password_invalid;
    } else {
      return null;
    }
  }

  static String? confirmPassword(String? value, {required String password}) {
    if (value == null || value.isEmpty) {
      return I10n.current.validator_confirm_password_empty;
    } else if (value != password) {
      return I10n.current.validator_confirm_password_not_match;
    } else {
      return null;
    }
  }
}
