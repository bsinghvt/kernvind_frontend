import 'package:email_validator/email_validator.dart';

String? Function(String?)? passwordValidator(String hintText) {
  validate(String? value) {
    value = value!.trim();
    if (value.isEmpty) {
      return "$hintText is missing!";
    }
    if (value.contains(" ")) {
      return "$hintText cannot have whitespaces!";
    }
    if (value.length < 8) {
      return "$hintText should have at least 8 characters!";
    }
    return null;
  }

  return validate;
}

String? Function(String?)? fullNameValidator(String hintText) {
  validate(String? value) {
    value = value!.trim();
    if (value.isEmpty) {
      return "$hintText is missing!";
    }

    if (value.length < 3) {
      return "$hintText should have at least 3 characters!";
    }
    return null;
  }

  return validate;
}

String? Function(String?)? textLengthValidator(
    {required String hintText,
    required int minLength,
    required int maxLength}) {
  validate(String? value) {
    value = value!.trim();

    if (value.length < minLength) {
      return "$hintText should have at least $minLength characters!";
    }
    if (value.length > maxLength) {
      return "$hintText should have maximum $maxLength characters!";
    }
    return null;
  }

  return validate;
}

String? Function(String?)? allWhiteSpacesValidator(String hintText) {
  validate(String? value) {
    value = value!.trim();
    if (value.isEmpty) {
      return "$hintText you entered contains only whitespaces!";
    }
    return null;
  }

  return validate;
}

String? Function(String?)? loginPasswordValidator(String hintText) {
  validate(String? value) {
    value = value!.trim();
    if (value.isEmpty) {
      return "$hintText you entered contains only whitespaces!";
    }
    if (value.contains(" ") || value.length < 8) {
      return "$hintText is wrong!";
    }
    return null;
  }

  return validate;
}

String? Function(String?)? emailValidator(String hintText) {
  validate(String? value) {
    value = value!.trim();
    if (value.isEmpty) {
      return "$hintText is missing!";
    }

    if (!EmailValidator.validate(value)) {
      return "Not a valid email!";
    }
    return null;
  }

  return validate;
}
