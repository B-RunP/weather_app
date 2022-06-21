import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      title: Row(children: <Widget>[
        Text("Flutter"),
        Text("News", style: TextStyle(color: Colors.blue))
      ]),
      elevation: 0.0,
    ));
  }
}
