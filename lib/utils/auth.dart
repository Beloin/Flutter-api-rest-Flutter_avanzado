import 'dart:async';
import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_api_rest/api/my_api.dart';
import 'package:flutter_api_rest/pages/login_page.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart' show required;

class Auth {
  Auth._internal();

  static Auth _instance = Auth._internal();

  static Auth get instance => _instance;

  final _storage = new FlutterSecureStorage();
  final key = 'SESSION';

  Completer _completer;

  Future<String> get acessToken async {
    // Impede multiplas chamadas dentro do Future.
    if (_completer != null) await _completer.future;

    _completer = new Completer();

    final session = await this.getSession();
    if (session != null) {
      final currentDate = new DateTime.now();
      final createdAt = session.createdAt;
      final int expiresIn = session.expiresIn;
      final int diff = currentDate.difference(createdAt).inSeconds;

      if (expiresIn - diff >= 60) {
        // Teremos um minuto para que o Token não expire durante uma requisição
        print('Token Alive');
        _complete();
        return session.token;
      } else {
        print('Token Expired');
        final MyAPI _api = new MyAPI();

        final Map<String, dynamic> data = await _api.refresh(session.token);

        if (data != null) {
          await this.setSession(data);
          _complete();
          return data['token'];
        }
        _complete();
        return null;
      }
    }
    _complete();
    print('Session Null');
    return null;
  }

  _complete() {
    if (this._completer != null && !this._completer.isCompleted)
      this._completer.complete();
  }

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
