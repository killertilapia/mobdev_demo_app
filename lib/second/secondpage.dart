import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  void _backToHome(BuildContext context){
    // code to move back to home
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
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