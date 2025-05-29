// lib/data/datasources/remote/api_service.dart

// import 'dart:convert';

class LoginApiSource {
  final String _baseUrl =
      'https://api.tuapp.com'; // Cambia esto por tu API real

  Future<bool> login({required String email, required String password}) async {
    // final url = Uri.parse('$_baseUrl/login');

    // final response = await http.post(
    //   url,
    //   headers: {'Content-Type': 'application/json'},
    //   body: jsonEncode({'email': email, 'password': password}),
    // );

    // if (response.statusCode == 200) {
    //   // Puedes guardar el token aquí o devolverlo
    //   final data = jsonDecode(response.body);
    //   final token = data['token'];

    //   // Aquí puedes almacenar el token en memoria o en un secure storage, etc.
    //   // Por simplicidad, devolvemos true
    //   return true;
    // } else {
    //   return false;
    // }
    return true; // Simulación de éxito para pruebas
  }
}
