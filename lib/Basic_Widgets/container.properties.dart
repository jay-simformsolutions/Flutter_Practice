import 'package:flutter/material.dart';

class ContainerProperties extends StatelessWidget {
  const ContainerProperties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 200,
          width: double.infinity,
          //color: Colors.red,
          child: const Center(
              child: Text(
            "Jay Akbari",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          )),
          decoration: BoxDecoration(
            color: Colors.red,
            gradient:  RadialGradient(
                colors: [Colors.black, Colors.orange, Colors.brown], radius: 2),
            //borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            image: DecorationImage(
                image: NetworkImage(
                    "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png"),
                opacity: 0.3),
            shape: BoxShape.circle,
          ),
          transform: Matrix4.rotationZ(0.2),
        ),
      ),
    );
  }
}
