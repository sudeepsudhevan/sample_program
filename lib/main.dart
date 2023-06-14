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

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  String name = 'Hello World';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          print('Text Button Clicked');
                        },
                        child: Text('Click me')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              print('Elevated Button Clicked');
                            },
                            child: Text('Click me')),
                        IconButton(
                            onPressed: () {
                              print('Icon Button Clicked');
                            },
                            icon: Icon(Icons.mic)),
                      ],
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Color.fromARGB(255, 5, 53, 158),
                  width: 5,
                ),
              ),
              child: Center(child: Text('you are hacked')),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          print('Text Button Clicked');
                        },
                        child: Text('Click me')),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              print('Elevated Button Clicked');
                            },
                            child: Text('Click me')),
                        IconButton(
                            onPressed: () {
                              print('Icon Button Clicked');
                            },
                            icon: Icon(Icons.mic)),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      )),
    );
  }
}
