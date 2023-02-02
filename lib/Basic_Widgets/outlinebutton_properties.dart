import 'package:flutter/material.dart';

class OutlineButtonProperties extends StatelessWidget {
  const OutlineButtonProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          hoverColor: Colors.transparent,
          child: OutlinedButton(
            onPressed: () {},
            child: Text("Simform"),
            style: OutlinedButton.styleFrom(
              disabledBackgroundColor: Colors.transparent,
              backgroundColor: Colors.black12,
              shape: StadiumBorder(),
              side: BorderSide(
                  color: Colors.black87,
                  strokeAlign: double.minPositive,
                  style: BorderStyle.solid),
              shadowColor: Colors.red,
              surfaceTintColor: Colors.brown,
            ),
          ),
        ),
      ),
    );
  }
}
