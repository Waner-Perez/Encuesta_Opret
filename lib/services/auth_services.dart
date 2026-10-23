import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:formulario_opret/services/http_interactor_services.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AuthClient extends http.BaseClient {
  final http.Client _inner = http.Client();
  bool _cerrando = false;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final response = await _inner.send(request);

    // El login con clave mala también da 401, ese no debe sacar al usuario
    final esLogin = request.url.path.endsWith('/Login/User');

    if (response.statusCode == 401 && !esLogin && !_cerrando) {
      _cerrando = true;
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('token');
      ApiService.token = null;
      navigatorKey.currentState?.pushNamedAndRemoveUntil('login', (r) => false);
      _cerrando = false;
    }
    return response;
  }
}