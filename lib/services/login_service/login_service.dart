// authentication_service.dart

import 'dart:async';

import 'package:wapig/models/models_auth/user_model.dart';

class AuthenticationResult {
  final bool success;
  final String errorMessage;

  AuthenticationResult({required this.success, required this.errorMessage});
}

class AuthenticationService {
  Future<AuthenticationResult> authenticate(UserModel userModel) async {
    // Simula la validación de autenticación con un usuario y contraseña específicos.
    // Aquí puedes agregar tu lógica de validación.

    await Future.delayed(const Duration(seconds: 1)); // Simula una demora de 2 segundos

    if (userModel.email == 'user@gmail.com' && userModel.password == '12345') {
      return AuthenticationResult(success: true, errorMessage: '');
    } else {
      return AuthenticationResult(success: false, errorMessage: 'Credenciales incorrectas');
    }
  }
}
