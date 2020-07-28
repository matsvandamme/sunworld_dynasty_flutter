class Validators {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

  static isValidEmail(String email) {
    String _emailTail = email.substring(email.length - 13).toLowerCase();
    String _correctJDN = '@jandenul.com';

    bool _isRegExpCompliant = _emailRegExp.hasMatch(email);
    bool _isJDNCompliant = (_emailTail == _correctJDN);

    bool _isValidEmail = _isRegExpCompliant && _isJDNCompliant;

    return _isValidEmail;
  }

  static isValidPassword(String password) {
    return _passwordRegExp.hasMatch(password);
  }
}
