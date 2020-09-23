import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';

import 'input_text.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = new GlobalKey();

  String _email = '', _password = '', _username = '';

  _submit() {
    final isOk = _formKey.currentState.validate();
    print('Email: ' + _email);
    print('Password: ' + _password);
    print('Username: ' + _username);
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
                label: 'Username',
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {
                  this._username = text;
                },
                validator: (text) {
                  if (text.trim().length < 5) {
                    return 'Invalid Username!';
                  } else
                    return null;
                },
              ),
              SizedBox(height: responsive.dp(2)),
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
              SizedBox(height: responsive.dp(2)),
              InputText(
                label: 'Password',
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {
                  this._password = text;
                },
                obscureText: true,
                validator: (text) {
                  if (text.trim().length < 6) {
                    return 'Invalid Password!';
                  } else
                    return null;
                },
              ),
              SizedBox(height: responsive.dp(4)),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  onPressed: _submit,
                  color: Colors.pinkAccent,
                  child: Text(
                    'Sign Up',
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
                    'Alerady have an Account?',
                    style: TextStyle(
                        fontSize:
                            responsive.dp(responsive.isTablet ? 1.4 : 1.6)),
                  ),
                  FlatButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      'Sign In!',
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
