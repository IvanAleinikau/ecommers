class Validator {
  static String? validateName(String name) {
    if (name.isEmpty) {
      return 'Введите имя';
    } else {
      String pattern = r"/^[a-z ,.'-]+$/i";
      RegExp regExp = RegExp(pattern);
      if (regExp.hasMatch(name)) {
        return 'Введите корректное имя';
      }
    }
  }

  static String? validatePhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return 'Введите номер мобильного телефона';
    } else {
      if (phoneNumber.length < 9) {
        return 'Номер должен быть не меньше 9 символов';
      }
    }
  }

  static String? zero() {
    return null;
  }
}
