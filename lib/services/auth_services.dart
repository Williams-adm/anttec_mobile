import 'package:dio/dio.dart';
import '../globals/session.dart';

class AuthService {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl:
          'http://192.168.18.9/only/public/api/v1', // ⚠️ cambia por la IP real de tu API
      headers: {'Content-Type': 'application/json'},
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    ),
  );

  static Future<bool> login(String email, String password) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        final data = response.data;
        Session.token = data['token']; // Guardamos el token en memoria
        print('✅ Token guardado: ${Session.token}');
        return true;
      }
    } on DioException catch (e) {
      print('❌ Error en login: ${e.message}');
    }

    return false;
  }
}
