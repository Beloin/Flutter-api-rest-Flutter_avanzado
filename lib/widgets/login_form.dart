import 'package:flutter/material.dart';
import 'package:flutter_api_rest/api/my_api.dart';
import 'package:flutter_api_rest/utils/responsive.dart';

import 'input_text.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = new GlobalKey();

  String _email = '', _password = '';

  _submit() {
    final isOk = _formKey.currentState.validate();
    print('Email: ' + _email);
    print('Password: ' + _password);
    if (isOk) {
      final myAPI = new MyAPI();
      myAPI.login(context, email: _email, password: _password);
    }
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 430 : 300,
          minWidth: 220,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              InputText(
                label: 'Email Address',
                keyboardType: TextInputType.emailAddress,
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {
                  this._email = text;
                },
                validator: (text) {
                  if (!text.contains('@')) {
                    return 'Invalid email!';
                  } else
                    return null;
                },
              ),
              SizedBox(height: responsive.dp(1)),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: InputText(
                        label: 'Password',
                        obscureText: true,
                        borderEnabled: false,
                        fontSize: responsive.dp(1.4),
                        onChanged: (text) {
                          this._password = text;
                        },
                        validator: (text) {
                          if (text.trim().length == 0) {
                            return 'Invalid Password';
                          } else
                            return null;
                        },
                      ),
                    ),
                    FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize:
                              responsive.dp(responsive.isTablet ? 1.2 : 1.5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: responsive.dp(4)),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  onPressed: _submit,
                  color: Colors.pinkAccent,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: responsive.dp(1)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New to Friendly Design?',
                    style: TextStyle(
                        fontSize:
                            responsive.dp(responsive.isTablet ? 1.4 : 1.6)),
                  ),
                  FlatButton(
                    onPressed: () => Navigator.pushNamed(context, 'register'),
                    child: Text(
                      'Sign Up now!',
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize:
                              responsive.dp(responsive.isTablet ? 1.4 : 1.6)),
                    ),
                  ),
                  SizedBox(height: responsive.dp(12)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
