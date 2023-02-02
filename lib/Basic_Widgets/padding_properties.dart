import 'package:flutter/material.dart';

class PaddingProperties extends StatelessWidget {
  const PaddingProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 65,
          width: 300,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Simform Hi !",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  wordSpacing: 55),
            ),
          ),
        ),
      ),
    );
  }
}
