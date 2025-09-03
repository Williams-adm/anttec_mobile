import 'package:dio/dio.dart';

class CategoryService {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://192.168.18.9/only/public/api/v1', // Tu IP y baseURL
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 5),
    ),
  );

  static Future<List<String>> fetchCategories() async {
    try {
      print('Token usado: ${Session.token}');

      if (Session.token != null) {
        _dio.options.headers['Authorization'] = 'Bearer ${Session.token}';
      } else {
        _dio.options.headers.remove(
          'Authorization',
        ); // por si acaso limpiar header
      }

      print('Headers enviados: ${_dio.options.headers}');

      final response = await _dio.get('/categories');
      print('Response data: ${response.data}');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((item) => item['name'].toString()).toList();
      }
    } catch (e) {
      print('Error al obtener categorías: $e');
    }
    return [];
  }

}

// Clase Session donde guardas el token
class Session {
  static String? token;
}
