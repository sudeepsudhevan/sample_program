/// The ScreenHome class is a stateful widget that displays a counter and a button to increment it,
/// while the DisplayText class is a stateless widget that displays a given text.
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample Program')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:'),
            DisplayText(countertext: '$_counter'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
          print('add button pressed');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

/// The DisplayText class is a stateless widget that displays a given text.
class DisplayText extends StatelessWidget {
  final String countertext;
  const DisplayText({super.key, required this.countertext});
  //const DisplayText({Key? key, required this.Countertext}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(countertext);
  }
}

// here display text is a stateless widget and its is generated each click of the button so the value changes