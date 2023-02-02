import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("TestWidget"),
      ),
      body: Column(
        children: [
          Container(decoration: BoxDecoration(
            border: Border.all(
            )
          ),)
        ],
      ),
    ));
  }
}
