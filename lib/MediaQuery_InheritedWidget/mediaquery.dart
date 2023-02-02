import 'package:flutter/material.dart';

class MediaQueryHome extends StatelessWidget {
  const MediaQueryHome({Key? key}) : super(key: key);

  Size displaySize(BuildContext context) {
    debugPrint('Size = ' + MediaQuery.of(context).size.toString());
    return MediaQuery.of(context).size;
  }

  double displayHeight(BuildContext context) {
    debugPrint('Height = ' + displaySize(context).height.toString());
    return displaySize(context).height;
  }

  double displayWidth(BuildContext context) {
    debugPrint('Width = ' + displaySize(context).width.toString());
    return displaySize(context).width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Size...MediaQuery"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.red,
              width: displayWidth(context) * 0.25,
              height: displayWidth(context) * 0.25,
              child: Text(
                'Box width 25% and Height 25% of screen width and text size 3% of screen width',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: displayWidth(context) * 0.03),
              ),
            ),
            Container(
              color: Colors.green,
              width: displayWidth(context) * 0.5,
              height: displayWidth(context) * 0.5,
              child: Text(
                'Box width 50% and height 50% of screen width and text size 6% of screen width',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: displayWidth(context) * 0.065),
              ),
            ),
            Container(
              color: Colors.blue,
              width: displayWidth(context),
              height:  displayWidth(context),
              child: Text(
                'Box width equal to screen width and text size 10% of screen width',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: displayWidth(context) * 0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
