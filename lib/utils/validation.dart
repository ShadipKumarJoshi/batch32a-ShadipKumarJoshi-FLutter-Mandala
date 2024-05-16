bool isEmailValid(String email) {
  // Regular expression to validate email
  final RegExp emailRegExp = RegExp(
    r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
  );
  return emailRegExp.hasMatch(email);
}

bool isPhoneNumberValid(String phone) {
  // Regular expression to validate 10 digit phone number starting with 9
  final RegExp phoneRegExp = RegExp(
    r'^9\d{9}$',
  );
  return phoneRegExp.hasMatch(phone);
}

String? validateEmailOrPhone(String value) {
  if (value.isEmpty) {
    return 'Please enter email or phone number!';
  } else if (!isEmailValid(value) && !isPhoneNumberValid(value)) {
    return 'Please enter a valid email or a phone number! ';
  }
  return null;
}

String? validatePassword(String value) {
  if (value.isEmpty) {
    return 'Please enter password!';
  }
  return null;
}
