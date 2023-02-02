import 'package:flutter/material.dart';

class ColumnProperties extends StatelessWidget {
  const ColumnProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // textDirection: TextDirection.ltr,  Not Working
          // textBaseline: TextBaseline.alphabetic,  Not Working

          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello World!",
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}
