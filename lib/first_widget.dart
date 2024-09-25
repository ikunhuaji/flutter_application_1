import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      color: const Color(0xff3355ff),
      fontFamily: 'Courier',
      decoration: TextDecoration.underline,
      decorationStyle: TextDecorationStyle.double,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('IKUN Flutter'),
      ),
      body: Column(children: <Widget>[
        Text(
          'Hello, Body!',
          textAlign: TextAlign.left,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1.5,
        ),
        Text(
          'MY Style',
          textScaleFactor: 2.0,
          textAlign: TextAlign.left,
          style: style,
        ),
      ]),
    );
  }
}
