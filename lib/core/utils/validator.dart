class Validator {
  static String? validateName(String name) {
    if (name.isEmpty) {
      return 'Введите имя';
    } else {
      if (!RegExp(r'^([a-zA-Z]).{1,}$').hasMatch(name)) {
        return 'Введите корректное имя';
      } else {
        return null;
      }
    }
  }

  static String? validateNotNull(String name) {
    if (name.isEmpty) {
      return 'Поле не должно быть пустым';
    } else {
      return null;
    }
  }

  static String? validatePhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return 'Введите номер мобильного телефона';
    } else {
      if (!RegExp(r'^(?:[+0]9)?[0-9]{9}$').hasMatch(phoneNumber)) {
        return 'Введите корректный номер';
      } else {
        return null;
      }
    }
  }

  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return 'Введите почту';
    } else {
      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(email)) {
        return 'Введите корректную почту';
      }
    }
    return null;
  }

  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'Введите пароль';
    } else {
      if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$').hasMatch(password)) {
        return 'Введите корректный пароль';
      } else {
        return null;
      }
    }
  }

  static String? validateConfirmPassword(
      {required String password, required String confirmPassword}) {
    if (password.isEmpty) {
      return 'Введите пароль';
    } else {
      if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$').hasMatch(password)) {
        return 'Введите корректный пароль';
      } else {
        if (password == confirmPassword) {
          return null;
        } else {
          return 'Пароли не совпадают';
        }
      }
    }
  }

  static String? zero() {
    return null;
  }
}
