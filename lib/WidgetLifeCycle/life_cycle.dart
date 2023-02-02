import 'package:flutter/material.dart';

import 'example_page.dart';


// ignore: must_be_immutable
class WidgetLifeCycle extends StatefulWidget {
  WidgetLifeCycle({Key? key, required this.counter, required this.onPress}) : super(key: key);

  int counter;
  final Function onPress;

  @override
  _WidgetLifeCycleState createState() => _WidgetLifeCycleState();
}

class _WidgetLifeCycleState extends State<WidgetLifeCycle> with SingleTickerProviderStateMixin {

  AnimationController? _animationController;


  @override
  void initState() {
    super.initState();
    print('Widget Lifecycle: initState');
    _animationController = AnimationController(vsync: this);
  }

  @override
  void didChangeDependencies() {
    print('Widget Lifecycle: didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant WidgetLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Widget Lifecycle: didUpdateWidget');
    if (this.widget.counter != oldWidget.counter) {
      print('Count has changed');
    }
  }

  @override
  void deactivate() {
    print('Widget Lifecycle: deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('Widget Lifecycle: dispose');
    _animationController?.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      widget.counter++;
    });
  }

  void _decrementCounter(){
  setState(() {
    widget.counter = 0;
  });}


  @override
  Widget build(BuildContext context) {
    print("Build Method Called");
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widget Lifecycle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${widget.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 8.0,),
            ElevatedButton(
              onPressed: () => _decrementCounter(),
              child: Text('Reset count'),
            ),
            SizedBox(height: 8.0,),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => ExamplePage()),
                );
              },
              child: Text('Navigate to new route'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: Colors.green,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}