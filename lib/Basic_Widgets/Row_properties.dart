import 'package:flutter/material.dart';

class RoWProperties extends StatelessWidget {
  const RoWProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        //textDirection: TextDirection.rtl,
        textBaseline: TextBaseline.values.first,
        children: [
          Expanded(
            child: Text('Deliver features faster', overflow: TextOverflow.clip),
          ),
          Expanded(
            child: Text(
              'Craft beautiful UIs and Useful for the Rows Properties',
              overflow: TextOverflow.fade,
              maxLines: 1,
            ),
          ),

          Expanded(child: FlutterLogo()),
          Expanded(
            child: Text("Hi How are you"),
          ), //This will give error out of constraint because there is not much space available to add this widget
        ],
      ),
    );
  }
}
