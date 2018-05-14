import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Text Field';

    return new MaterialApp(
      title: title,
      home: new HomeScreen(
        title: title,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String title;

  HomeScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: 'Please enter a search term',
              ),
            ),
            new TextFormField(
              decoration: new InputDecoration(
                labelText: 'Enter your username'
              ),
            )
          ],
        ));
  }
}
