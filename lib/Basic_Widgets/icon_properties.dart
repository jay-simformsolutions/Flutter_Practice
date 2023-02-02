import 'package:flutter/material.dart';

class IconProperties extends StatelessWidget {
  const IconProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              child: Icon(
                Icons.add,
                size: 200,
                color: Colors.red,
                shadows: <Shadow>[
                  Shadow(color: Colors.black, blurRadius: 25.0)
                ],
              ),
            ),
            Expanded(
              child: Icon(
                Icons.abc_outlined,
                size: 200,
                color: Colors.brown,
                shadows: <Shadow>[
                  Shadow(color: Colors.black, blurRadius: 25.0)
                ],
                //textDirection: TextDirection.rtl,  Not Working
              ),
            ),
          ],
        ),
      ),
    );
  }
}
