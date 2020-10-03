import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_rest/pages/home_page.dart';
import 'package:flutter_api_rest/pages/login_page.dart';
import 'package:flutter_api_rest/utils/auth.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);
  static const routeName = 'splash';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AfterLayoutMixin {
  @override
  void afterFirstLayout(BuildContext context) {
    _check();
  }

  _check() async {
    final token = await Auth.instance.acessToken;
    String redirection;
    if (token != null)
      redirection = HomePage.routeName;
    else
      redirection = LoginPage.routeName;
    Navigator.of(context).pushReplacementNamed(redirection);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
