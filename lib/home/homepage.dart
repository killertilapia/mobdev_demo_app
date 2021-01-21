import 'package:flutter/material.dart';
import 'package:flutter_app_demo/second/secondpage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
          child: Center(
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/fry.jpg"),
                        radius: 90.0,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Username'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Password'),
                          obscureText: true,
                        )
                      ),
                      RaisedButton(
                          child: Text('Sign In'),
                          onPressed: () {
                            print('Sign in button pressed!');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MySecondPage())
                            );
                          }),
                      FlatButton(
                        child: Text('Forgot Password?'),
                        onPressed: () {
                          print('Forgot Password pressed!');
                        },
                      ),
                    ],
          )
        )
      ),
    )
  );
  }
}
