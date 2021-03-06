import 'package:flutter/material.dart';
import 'package:flutter_app_demo/home/homepage.dart';
import 'package:flutter_app_demo/home/inheritedcounter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CountProvider(
        counter: Counter(0),
        child: MyHomePage(title: 'Hidden Agora'),
      )
    );
  }
}


