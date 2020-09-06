import 'package:flutter/material.dart';
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
    final size = MediaQuery.of(context).size;
    final orangeSize = size.width * 0.65;
    final pinkSize = size.width * 0.8;

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
              top: size.height * 0.23,
              child: IconContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
