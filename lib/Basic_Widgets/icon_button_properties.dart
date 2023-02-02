import 'package:flutter/material.dart';

class IconButtonProperties extends StatefulWidget {
  const IconButtonProperties({Key? key}) : super(key: key);

  //Create the State Object and hold all the mutable state of the Widget
  @override
  State<IconButtonProperties> createState() => _IconButtonPropertiesState();
}

class _IconButtonPropertiesState extends State<IconButtonProperties> {

  _IconButtonPropertiesState(){
    print("First Constructor Called");
  }

  @override
  int _volumeUp = 10;

  @override
  void initState() {
    // TODO: implement initState
    print("Init Statte");
    super.initState();
  }


  @override
  void deactivate() {
    print("Deactivated");
  }

  @override
  void dispose() {
    print("Disposed Called");
    super.dispose();
  }

  Widget build(BuildContext context) {
    print("Build Method Called");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              splashColor: Colors.black12,
              focusColor: Colors.brown,
              color: Colors.red,
              icon: Icon(
                Icons.volume_up,
                size: 40,
              ),
              onPressed: () => setState(() {
                _volumeUp += 10;
              }),
              style: IconButton.styleFrom(
                  //   shadowColor: Colors.black87,
                  //   backgroundColor: Colors.black,
                  //   hoverColor: Colors.black,
                  //   highlightColor: Colors.black,

                  ),
            ),
            Text(
              "Volume is $_volumeUp",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
