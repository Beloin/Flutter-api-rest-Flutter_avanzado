import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_api_rest/pages/login_page.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart' show required;

class Auth {
  Auth._internal();

  static Auth _instance = Auth._internal();

  static Auth get instance => _instance;

  final _storage = new FlutterSecureStorage();
  final key = 'SESSION';

  Future<void> setSession(Map<String, dynamic> data) async {
    final session = new Session(
      token: data['token'],
      expiresIn: data['expiresIn'],
      createdAt: DateTime.now(),
    );
    final toJson = jsonEncode(session);
    await this._storage.write(key: key, value: toJson);
    print('Session saved');
  }

  Future<Session> getSession() async {
    final value = await this._storage.read(key: key);
    if (value != null) {
      final Map<String, dynamic> json = jsonDecode(value);
      return Session.fromJson(json);
    }
    return null;
  }

  Future<void> logOut(BuildContext context) async {
    await this._storage.deleteAll();
    Navigator.of(context)
        .pushNamedAndRemoveUntil(LoginPage.routeName, (_) => false);
  }
}

class Session {
  final String token;
  final int expiresIn;
  final DateTime createdAt;

  Session({
    @required this.token,
    @required this.expiresIn,
    @required this.createdAt,
  });

  static Session fromJson(Map<String, dynamic> json) {
    return new Session(
      token: json['token'],
      expiresIn: json['expiresIn'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "token": this.token,
      "expiresIn": this.expiresIn,
      "createdAt": this.createdAt.toString(),
    };
  }
}
