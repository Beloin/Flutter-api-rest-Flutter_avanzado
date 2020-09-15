import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';
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

    final size = MediaQuery.of(context).size;
    final orangeSize = size.width * 0.65;
    final pinkSize = size.width * 0.8;
    final iconSize = size.height * .2;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
                    size: size.width * .27,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Hello Again\nWelcome Back!',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
