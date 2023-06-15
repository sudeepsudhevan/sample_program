import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _textController = TextEditingController();

  String _text = 'text will be displayed here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            color: Color.fromARGB(255, 6, 222, 230),
            child: Column(
              children: [
                TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type something here',
                    )),
                ElevatedButton(
                    onPressed: () {
                      //Get data from text field
                      print(_textController.text);
                      setState(() {
                        _text = _textController.text;
                      });
                    },
                    child: Text('click here')),
                Text(_text)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
