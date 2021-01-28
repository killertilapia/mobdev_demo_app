import 'package:flutter/material.dart';
import 'package:flutter_app_demo/home/inheritedcounter.dart';


class MySecondPage extends StatefulWidget {
  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  int secoundCount = 10;
  var provider;

  void _backToHome(BuildContext context){
    // code to move back to home
    Navigator.pop(context);
  }

  void addCount(){
    setState(() {
      secoundCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    provider = CountProvider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildColumn(),
            ),
          )
        )
    );
  }

  List<Widget> _buildColumn(){
    return [
      Text("$secoundCount"),
      Text("inheritedCount: ${provider.counter.count}"),
      RaisedButton(
        child: Text('Add ++'),
        onPressed: addCount
      ),
      Text("This is my Second Page"),
      FlatButton(
        child: Text("Back to Home"),
        onPressed: (){
          _backToHome(context);
        },
      )
    ];
  }
}