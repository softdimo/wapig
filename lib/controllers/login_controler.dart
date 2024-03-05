// login_controller.dart

import 'package:wapig/imports/barrel.dart';

class LoginController {
  final AuthenticationService _authenticationService = AuthenticationService();

  Future<bool> login(UserModel userModel) async {
    try {
      final response = await _authenticationService.authenticate(userModel);

      if (response.success) {
        return true;
         
      } else {
        return false;
      }
    } catch (error) {
      // Manejar otros errores, si es necesario
      print('Error durante la autenticación: $error');
      return false;
    }
  }
}
