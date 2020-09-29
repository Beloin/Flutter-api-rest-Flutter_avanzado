import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_api_rest/pages/home_page.dart';
import 'package:flutter_api_rest/utils/dialogs.dart';
import 'package:meta/meta.dart';

class MyAPI {
  final Dio _dio = new Dio(
    BaseOptions(baseUrl: 'https://curso-api-flutter.herokuapp.com'),
  );

  Future<void> register(
    BuildContext context, {
    @required String username,
    @required String email,
    @required String password,
  }) async {
    final progress = new ProgressDialog(context);

    try {
      progress.show();

      final Response response = await _dio.post(
        '/api/v1/register',
        options: new Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          "username": username,
          "email": email,
          "password": password,
        },
      );

      progress.dismiss();

      print('Response: ${response.data}');

      // Navigator.of(context).pushReplacementNamed(HomePage.routeName);
      // A página de Login continuaria aparecendo. Solução:
      Navigator.of(context).pushNamedAndRemoveUntil(
        HomePage.routeName,
        (route) => false,
      );
    } on DioError catch (e) {
      progress.dismiss();

      print(
          'Error trying to register User: ${e.response}. StatusCode: ${e.response.statusCode}');

      Dialogs.info(
        context,
        title: 'Error in register',
        content: e.response.statusCode == 409
            ? 'Duplicated Email, or Username.'
            : e.message,
      );
    } on Exception catch (e) {
      progress.dismiss();
      print('An Unknow error has occorred: $e');

      Dialogs.info(
        context,
        title: 'Error in register',
        content: 'An Unknow error has occorred\n$e',
      );

      if (e is DioError) {
        // faz um cast
        // Do things;
      }
    }
  }

  Future<void> login(
    BuildContext context, {
    @required String email,
    @required String password,
  }) async {
    final progress = new ProgressDialog(context);

    try {
      progress.show();

      final Response response = await _dio.post(
        '/api/v1/login',
        options: new Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );

      progress.dismiss();

      print('Response: ${response.data}');

      // Navigator.of(context).pushReplacementNamed(HomePage.routeName);
      // A página de Login continuaria aparecendo. Solução:
      Navigator.of(context).pushNamedAndRemoveUntil(
        HomePage.routeName,
        (route) => false,
      );
    } on DioError catch (e) {
      progress.dismiss();

      print(
          'Error trying to Login User: ${e.response}. StatusCode: ${e.response.statusCode}');

      String message = '';
      switch (e.response.statusCode) {
        case 404:
          message = 'User not found';
          break;
        case 403:
          message = 'Ivalid Password';
          break;
        default:
          message = e.message;
          break;
      }

      Dialogs.info(
        context,
        title: 'Error in Login',
        content: message,
      );
    } on Exception catch (e) {
      progress.dismiss();
      print('An Unknow error has occorred: $e');

      Dialogs.info(
        context,
        title: 'Error in register',
        content: 'An Unknow error has occorred\n$e',
      );

      if (e is DioError) {
        // faz um cast
        // Do things;
      }
    }
  }
}
