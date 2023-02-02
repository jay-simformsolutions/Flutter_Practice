// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:practice_app/Basic_Widgets/icon_button_properties.dart';
// import 'package:practice_app/Basic_Widgets/outlinebutton_properties.dart';
// import 'package:practice_app/WidgetLifeCycle/life_cycle.dart';
//
//
// void main() {
//   runApp(MaterialApp(
//     // home: MyApp(),
//     // theme: ThemeData(
//     //
//     //     // primaryColor: Colors.black,
//     //     // splashColor: Colors.red,
//     //     // hoverColor: Colors.redAccent,
//     //     // brightness: Brightness.dark,
//     //     // buttonTheme: const ButtonThemeData(
//     //     //   buttonColor: Colors.amberAccent,
//     //     // ),
//     //     //primarySwatch: Colors.blue,
//     //     //scaffoldBackgroundColor: Colors.purpleAccent,
//     //     floatingActionButtonTheme:
//     //         FloatingActionButtonThemeData(backgroundColor: Colors.grey,focusColor: Colors.red),
//     //     useMaterial3: true,
//     //     colorSchemeSeed: Colors.green
//     // ),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //It will resize all the element if Keyboard is appear for input data
//       resizeToAvoidBottomInset: true,
//       // appBar: AppBar(
//       //   title: Text("Practice App",
//       //       style: TextStyle(
//       //           color: Colors.green,
//       //           fontWeight: FontWeight.bold,
//       //           fontSize: 25)),
//       //   centerTitle: true,
//       //   backgroundColor: Colors.black,
//       // ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {},
//       ),
//
//       body: IconButtonProperties(),
//     );
//   }
// }


//For Widget Life Cycle


//import 'package:flutter/material.dart';
//import 'package:practice_app/WidgetLifeCycle/life_cycle.dart';



// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int counter = 0;
//
//   void resetCounter() {
//     setState(() {
//       counter = 0;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.grey,
//       ),
//       home: WidgetLifeCycle(
//         counter: counter,
//         onPress: resetCounter,
//       ),
//     );
//   }
// }



// For Path Provider


// import 'package:flutter/material.dart';
// import 'package:practice_app/PathProvider/path_provider.dart';
//
// void main(){
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: PathProvider(storage: Storage(),),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }



// FOr the MediaQuery
 import 'package:flutter/material.dart';

import 'MediaQuery_InheritedWidget/mediaquery.dart';

void main() => runApp(Home());


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaQueryHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

