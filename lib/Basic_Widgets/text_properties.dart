import 'package:flutter/material.dart';

class TextProperties extends StatelessWidget {
  const TextProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: RichText(
              text: TextSpan(
                text: "Hello World!",
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: "Hello",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " World!", style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                Text("Simform"),
              ],
            ),
          ),
          Text(
            "Hi, How are you I am Jay Akbari",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            semanticsLabel: 'What!',
            strutStyle: StrutStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              height: 1.5,
              leading: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
