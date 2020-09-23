import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/avatar_button.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';
import 'package:flutter_api_rest/widgets/register_form.dart';
import '../widgets/circle.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = 'register';
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    final orangeSize = responsive.wp(65);
    final pinkSize = responsive.wp(80);

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  right: -(pinkSize) * 0.2,
                  top: -(pinkSize) * 0.25,
                  child: Circle(
                    colors: [
                      Colors.pinkAccent,
                      Colors.pink,
                    ],
                    size: pinkSize,
                  ),
                ),
                Positioned(
                  left: -(orangeSize) * 0.2,
                  top: -(orangeSize) * 0.25,
                  child: Circle(
                    colors: [
                      Colors.orange,
                      Colors.deepOrangeAccent,
                    ],
                    size: orangeSize,
                  ),
                ),
                Positioned(
                  top: pinkSize * .25,
                  child: Column(
                    children: [
                      Text(
                        'Hello\nSign Up to get Started!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: responsive.dp(2), color: Colors.white),
                      ),
                      SizedBox(height: responsive.dp(5.2)),
                      AvatarButton(
                        imageSize: responsive.wp(25),
                      ),
                    ],
                  ),
                ),
                RegisterForm(),
                Positioned(
                  left: -10,
                  top: 15,
                  child: SafeArea(
                    child: MaterialButton(
                      padding: EdgeInsets.all(15),
                      onPressed: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
