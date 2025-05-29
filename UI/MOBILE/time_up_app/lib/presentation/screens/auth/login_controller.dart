// lib/presentation/screens/auth/login_controller.dart

import 'package:flutter/material.dart';
import 'package:time_up_app/data/datasources/remote/login_api_source.dart';
import '../../../routes/route_manager.dart';

class LoginController {
  final LoginApiSource _apiService;

  LoginController(this._apiService);

  Future<void> login({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    // try {
    // Validar login con la API
    final success = await _apiService.login(email: email, password: password);

    if (success) {
      // Navegar a la pantalla de inicio reemplazando el login
      Navigator.of(context).pushReplacementNamed(RouteManager.home);
      // }
      //   } else {
      //     _showError(context, 'Credenciales inválidas');
      //   }
      // } catch (e) {
      //   _showError(context, 'Error de red o del servidor');
      // }
    }

    // void _showError(BuildContext context, String message) {
    //   ScaffoldMessenger.of(
    //     context,
    //   ).showSnackBar(SnackBar(content: Text(message)));
    // }
  }
}
