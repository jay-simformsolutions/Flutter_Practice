import 'package:flutter/material.dart';

class StackProperties extends StatelessWidget {
  const StackProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          textDirection: TextDirection.ltr,
          fit: StackFit.loose,
          children: [
            Container(
              height: 500,
              width: 500,
              color: Colors.black,
            ),
            Container(
              height: 350,
              width: 350,
              color: Colors.red,
            ),
            Container(height: 250, width: 250, color: Colors.amberAccent)
          ],
        ),
      ),
    );
  }
}
