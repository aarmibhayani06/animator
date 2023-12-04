import 'package:animations/animations.dart';
import 'package:animator6/Click.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OpenContainer(
              closedBuilder: (_, openContainer) {
                return Image(image: AssetImage('assets/Solar.png'),);
              },
              openColor: Color(0xff412EEF),
              closedElevation: 20,
              closedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              transitionDuration: Duration(seconds: 3),
              openBuilder: (_, closeContainer) {
                return click();
              },
            ),
          ],
        ),
      ),
    );
  }
}
