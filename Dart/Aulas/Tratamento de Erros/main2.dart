void main() {

  Login login = Login();

  try {
    login.logar();
  } on PasswordLengthError catch (err) {
    print("Falha ao Logar");
  } catch (err) {
    print("Error");
  } finally {
    print("End");
  }

}

class Login {

  void logar() {

    String pass = "123";

    if(pass.length <= 6) throw PasswordLengthError();

  }

}

class PasswordLengthError implements Exception {

  PasswordLengthError();

}