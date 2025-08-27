import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:live_track/models/user_model.dart';

class AuthRepositoryLocal {
  static const _kSessionKey = 'auth_session_v1';

  // Usuarios de ejemplo
  static const _users = <Map<String, String>>[
    {
      'email': 'admin@livetrack.test',
      'password': '123456',
      'name': 'Administrador',
      'role': 'admin',
    },
    {
      'email': 'demo@livetrack.test',
      'password': 'demo123',
      'name': 'Usuario Demo',
      'role': 'viewer',
    },
  ];

  Future<UserModel> signIn(String email, String password) async {
    // Simula I/O
    await Future.delayed(const Duration(milliseconds: 350));
    final match = _users.firstWhere(
      (u) => u['email'] == email && u['password'] == password,
      orElse: () => {},
    );
    if (match.isEmpty) {
      throw Exception('Credenciales inválidas');
    }
    final user = UserModel(
      id: email, // para la demo usamos el email como id
      email: email,
      name: match['name'] ?? 'Usuario',
      role: match['role'],
      token: 'local-token', // opcional
    );
    await _persist(user);
    return user;
  }

  Future<void> signOut() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_kSessionKey);
  }

  Future<UserModel?> restore() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_kSessionKey);
    if (raw == null) return null;
    try {
      final json = jsonDecode(raw) as Map<String, dynamic>;
      return UserModel.fromJson(json);
    } catch (_) {
      await prefs.remove(_kSessionKey);
      return null;
    }
  }

  Future<void> _persist(UserModel user) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_kSessionKey, jsonEncode(user.toJson()));
  }
}
