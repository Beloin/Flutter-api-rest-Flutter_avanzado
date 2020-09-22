import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';
import 'package:flutter_api_rest/widgets/login_form.dart';
import '../widgets/circle.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    final orangeSize = responsive.wp(65);
    final pinkSize = responsive.wp(80);
    final iconSize = responsive.hp(20);

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
                  top: -(pinkSize) * 0.30,
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
                  top: -(orangeSize) * 0.30,
                  child: Circle(
                    colors: [
                      Colors.orange,
                      Colors.deepOrangeAccent,
                    ],
                    size: orangeSize,
                  ),
                ),
                Positioned(
                  top: iconSize,
                  child: Column(
                    children: [
                      IconContainer(
                        size: responsive.wp(27),
                      ),
                      SizedBox(
                        height: responsive.dp(3),
                      ),
                      Text(
                        'Hello Again\nWelcome Back!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: responsive.dp(2),
                        ),
                      )
                    ],
                  ),
                ),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
